
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int * xsltTemplatePtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef int xmlChar ;
struct TYPE_7__ {int * namedTemplates; } ;
struct TYPE_6__ {TYPE_2__* style; } ;


 scalar_t__ xmlHashLookup2 (int *,int const*,int const*) ;
 TYPE_2__* xsltNextImport (TYPE_2__*) ;

xsltTemplatePtr
xsltFindTemplate(xsltTransformContextPtr ctxt, const xmlChar *name,
          const xmlChar *nameURI) {
    xsltTemplatePtr cur;
    xsltStylesheetPtr style;

    if ((ctxt == ((void*)0)) || (name == ((void*)0)))
 return(((void*)0));
    style = ctxt->style;
    while (style != ((void*)0)) {
        if (style->namedTemplates != ((void*)0)) {
            cur = (xsltTemplatePtr)
                xmlHashLookup2(style->namedTemplates, name, nameURI);
            if (cur != ((void*)0))
                return(cur);
        }

 style = xsltNextImport(style);
    }
    return(((void*)0));
}
