
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltStylesheetPtr ;
typedef int xmlDocPtr ;


 int xsltApplyStylesheetInternal (int ,int ,char const**,int *,int *,int *) ;

xmlDocPtr
xsltApplyStylesheet(xsltStylesheetPtr style, xmlDocPtr doc,
                    const char **params)
{
    return (xsltApplyStylesheetInternal(style, doc, params, ((void*)0), ((void*)0), ((void*)0)));
}
