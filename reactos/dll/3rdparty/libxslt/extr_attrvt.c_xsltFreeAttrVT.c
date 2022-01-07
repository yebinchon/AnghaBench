
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltAttrVTPtr ;
typedef int xmlXPathCompExprPtr ;
struct TYPE_5__ {int strstart; int nb_seg; struct TYPE_5__* nsList; int ** segments; } ;
typedef TYPE_1__ xmlChar ;


 int xmlFree (TYPE_1__*) ;
 int xmlXPathFreeCompExpr (int ) ;

__attribute__((used)) static void
xsltFreeAttrVT(xsltAttrVTPtr avt) {
    int i;

    if (avt == ((void*)0)) return;

    if (avt->strstart == 1) {
 for (i = 0;i < avt->nb_seg; i += 2)
     if (avt->segments[i] != ((void*)0))
  xmlFree((xmlChar *) avt->segments[i]);
 for (i = 1;i < avt->nb_seg; i += 2)
     xmlXPathFreeCompExpr((xmlXPathCompExprPtr) avt->segments[i]);
    } else {
 for (i = 0;i < avt->nb_seg; i += 2)
     xmlXPathFreeCompExpr((xmlXPathCompExprPtr) avt->segments[i]);
 for (i = 1;i < avt->nb_seg; i += 2)
     if (avt->segments[i] != ((void*)0))
  xmlFree((xmlChar *) avt->segments[i]);
    }
    if (avt->nsList != ((void*)0))
        xmlFree(avt->nsList);
    xmlFree(avt);
}
