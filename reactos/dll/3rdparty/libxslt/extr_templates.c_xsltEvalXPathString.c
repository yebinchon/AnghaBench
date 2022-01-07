
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;
typedef int xmlXPathCompExprPtr ;
typedef int xmlChar ;


 int * xsltEvalXPathStringNs (int ,int ,int ,int *) ;

xmlChar *
xsltEvalXPathString(xsltTransformContextPtr ctxt, xmlXPathCompExprPtr comp) {
    return(xsltEvalXPathStringNs(ctxt, comp, 0, ((void*)0)));
}
