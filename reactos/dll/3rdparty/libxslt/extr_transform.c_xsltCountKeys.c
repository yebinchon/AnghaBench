
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef TYPE_3__* xsltKeyDefPtr ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {TYPE_3__* keys; int * keyMatch; } ;
struct TYPE_7__ {int hasTemplKeyPatterns; int nbKeys; TYPE_2__* style; } ;


 TYPE_2__* xsltNextImport (TYPE_2__*) ;

__attribute__((used)) static int
xsltCountKeys(xsltTransformContextPtr ctxt)
{
    xsltStylesheetPtr style;
    xsltKeyDefPtr keyd;

    if (ctxt == ((void*)0))
 return(-1);




    ctxt->hasTemplKeyPatterns = 0;
    style = ctxt->style;
    while (style != ((void*)0)) {
 if (style->keyMatch != ((void*)0)) {
     ctxt->hasTemplKeyPatterns = 1;
     break;
 }
 style = xsltNextImport(style);
    }



    ctxt->nbKeys = 0;
    style = ctxt->style;
    while (style != ((void*)0)) {
 keyd = style->keys;
 while (keyd) {
     ctxt->nbKeys++;
     keyd = keyd->next;
 }
 style = xsltNextImport(style);
    }
    return(ctxt->nbKeys);
}
