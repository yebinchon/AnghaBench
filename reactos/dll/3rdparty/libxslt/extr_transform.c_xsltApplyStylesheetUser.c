
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;
typedef int xsltStylesheetPtr ;
typedef int xmlDocPtr ;
typedef int FILE ;


 int xsltApplyStylesheetInternal (int ,int ,char const**,char const*,int *,int ) ;

xmlDocPtr
xsltApplyStylesheetUser(xsltStylesheetPtr style, xmlDocPtr doc,
                            const char **params, const char *output,
                            FILE * profile, xsltTransformContextPtr userCtxt)
{
    xmlDocPtr res;

    res = xsltApplyStylesheetInternal(style, doc, params, output,
                               profile, userCtxt);
    return (res);
}
