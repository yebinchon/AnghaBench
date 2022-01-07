
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltStepOpPtr ;
typedef TYPE_1__* xsltCompMatchPtr ;
typedef int xsltCompMatch ;
struct TYPE_7__ {int nbStep; struct TYPE_7__* steps; int * comp; struct TYPE_7__* value3; struct TYPE_7__* value2; struct TYPE_7__* value; struct TYPE_7__* nsList; int * pattern; } ;
typedef TYPE_1__ xmlChar ;


 int memset (TYPE_1__*,int,int) ;
 int xmlFree (TYPE_1__*) ;
 int xmlXPathFreeCompExpr (int *) ;

__attribute__((used)) static void
xsltFreeCompMatch(xsltCompMatchPtr comp) {
    xsltStepOpPtr op;
    int i;

    if (comp == ((void*)0))
 return;
    if (comp->pattern != ((void*)0))
 xmlFree((xmlChar *)comp->pattern);
    if (comp->nsList != ((void*)0))
 xmlFree(comp->nsList);
    for (i = 0;i < comp->nbStep;i++) {
 op = &comp->steps[i];
 if (op->value != ((void*)0))
     xmlFree(op->value);
 if (op->value2 != ((void*)0))
     xmlFree(op->value2);
 if (op->value3 != ((void*)0))
     xmlFree(op->value3);
 if (op->comp != ((void*)0))
     xmlXPathFreeCompExpr(op->comp);
    }
    xmlFree(comp->steps);
    memset(comp, -1, sizeof(xsltCompMatch));
    xmlFree(comp);
}
