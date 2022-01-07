
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltStylesheetPtr ;
typedef int xmlDocPtr ;
typedef int FILE ;


 int xsltApplyStylesheetInternal (int ,int ,char const**,int *,int *,int *) ;

xmlDocPtr
xsltProfileStylesheet(xsltStylesheetPtr style, xmlDocPtr doc,
                      const char **params, FILE * output)
{
    xmlDocPtr res;

    res = xsltApplyStylesheetInternal(style, doc, params, ((void*)0), output, ((void*)0));
    return (res);
}
