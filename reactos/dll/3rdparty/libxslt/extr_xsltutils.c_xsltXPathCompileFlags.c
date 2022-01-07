
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlXPathContextPtr ;
typedef int * xmlXPathCompExprPtr ;
typedef int xmlChar ;
struct TYPE_11__ {TYPE_2__* xpathCtxt; } ;
struct TYPE_10__ {int flags; int dict; int * doc; } ;
struct TYPE_9__ {int dict; int * doc; } ;


 TYPE_7__* XSLT_CCTXT (TYPE_1__*) ;
 int * xmlXPathCtxtCompile (TYPE_2__*,int const*) ;
 int xmlXPathFreeContext (TYPE_2__*) ;
 TYPE_2__* xmlXPathNewContext (int *) ;

xmlXPathCompExprPtr
xsltXPathCompileFlags(xsltStylesheetPtr style, const xmlChar *str, int flags) {
    xmlXPathContextPtr xpathCtxt;
    xmlXPathCompExprPtr ret;

    if (style != ((void*)0)) {
 xpathCtxt = xmlXPathNewContext(style->doc);

 if (xpathCtxt == ((void*)0))
     return ((void*)0);
 xpathCtxt->dict = style->dict;
    } else {
 xpathCtxt = xmlXPathNewContext(((void*)0));
 if (xpathCtxt == ((void*)0))
     return ((void*)0);
    }
    xpathCtxt->flags = flags;




    ret = xmlXPathCtxtCompile(xpathCtxt, str);






    xmlXPathFreeContext(xpathCtxt);






    return(ret);
}
