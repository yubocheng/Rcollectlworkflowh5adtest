#! /usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

v = vignette(topic="workflow_cellxgene_h5ad", package = "Rcollectlworkflowh5adtest")
path = file.path(v$Dir, "doc", "workflow_cellxgene_h5ad.Rmd")
file.copy(from = path, to = getwd())
rmarkdown::render("workflow_cellxgene_h5ad.Rmd", output_dir = ".", params = list(knitr_eval=as.logical(args[1]), fileId=args[2], sample=args[3], dgCMatrix=as.logical(args[4]), core=as.integer(args[5]), mem_gb=as.integer(args[6])))
