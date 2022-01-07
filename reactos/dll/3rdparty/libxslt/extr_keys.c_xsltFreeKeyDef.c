
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltKeyDefPtr ;
typedef int xsltKeyDef ;
struct TYPE_5__ {struct TYPE_5__* nsList; struct TYPE_5__* use; struct TYPE_5__* match; struct TYPE_5__* nameURI; struct TYPE_5__* name; int * usecomp; int * comp; } ;


 int memset (TYPE_1__*,int,int) ;
 int xmlFree (TYPE_1__*) ;
 int xmlXPathFreeCompExpr (int *) ;

__attribute__((used)) static void
xsltFreeKeyDef(xsltKeyDefPtr keyd) {
    if (keyd == ((void*)0))
 return;
    if (keyd->comp != ((void*)0))
 xmlXPathFreeCompExpr(keyd->comp);
    if (keyd->usecomp != ((void*)0))
 xmlXPathFreeCompExpr(keyd->usecomp);
    if (keyd->name != ((void*)0))
 xmlFree(keyd->name);
    if (keyd->nameURI != ((void*)0))
 xmlFree(keyd->nameURI);
    if (keyd->match != ((void*)0))
 xmlFree(keyd->match);
    if (keyd->use != ((void*)0))
 xmlFree(keyd->use);
    if (keyd->nsList != ((void*)0))
        xmlFree(keyd->nsList);
    memset(keyd, -1, sizeof(xsltKeyDef));
    xmlFree(keyd);
}
