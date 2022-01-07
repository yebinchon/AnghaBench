
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltStylesheetPtr ;
typedef int xmlXPathCompExprPtr ;
typedef int xmlChar ;


 int xsltXPathCompileFlags (int ,int const*,int ) ;

xmlXPathCompExprPtr
xsltXPathCompile(xsltStylesheetPtr style, const xmlChar *str) {
    return(xsltXPathCompileFlags(style, str, 0));
}
