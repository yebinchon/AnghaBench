
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
struct TYPE_7__ {int * stripSpaces; } ;
struct TYPE_6__ {TYPE_2__* style; } ;


 TYPE_2__* xsltNextImport (TYPE_2__*) ;

int
xsltNeedElemSpaceHandling(xsltTransformContextPtr ctxt) {
    xsltStylesheetPtr style;

    if (ctxt == ((void*)0))
 return(0);
    style = ctxt->style;
    while (style != ((void*)0)) {
 if (style->stripSpaces != ((void*)0))
     return(1);
 style = xsltNextImport(style);
    }
    return(0);
}
