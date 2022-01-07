
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
struct TYPE_8__ {TYPE_1__* style; TYPE_1__* topStyle; } ;
typedef TYPE_2__ xsltAttrSetContext ;
struct TYPE_7__ {int * attributeSets; } ;


 int * xmlHashCreate (int) ;
 int xmlHashFree (int *,int *) ;
 int xmlHashScanFull (int *,int ,TYPE_2__*) ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 TYPE_1__* xsltNextImport (TYPE_1__*) ;
 int xsltResolveSASCallback ;

void
xsltResolveStylesheetAttributeSet(xsltStylesheetPtr style) {
    xsltStylesheetPtr cur;
    xsltAttrSetContext asctx;





    asctx.topStyle = style;
    cur = style;
    while (cur != ((void*)0)) {
 if (cur->attributeSets != ((void*)0)) {
     if (style->attributeSets == ((void*)0)) {




  style->attributeSets = xmlHashCreate(10);
     }
            asctx.style = cur;
     xmlHashScanFull(cur->attributeSets, xsltResolveSASCallback,
                            &asctx);

            if (cur != style) {




                xmlHashFree(cur->attributeSets, ((void*)0));
                cur->attributeSets = ((void*)0);
            }
 }
 cur = xsltNextImport(cur);
    }
}
