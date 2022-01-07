
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xsltTransformFunction ;
typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltElemPreCompPtr ;
typedef int xsltElemPreCompDeallocator ;
typedef int xmlNodePtr ;
struct TYPE_6__ {struct TYPE_6__* next; int free; int inst; int func; int type; } ;
struct TYPE_5__ {TYPE_2__* preComps; } ;


 int XSLT_FUNC_EXTENSION ;

void
xsltInitElemPreComp(xsltElemPreCompPtr comp, xsltStylesheetPtr style,
                    xmlNodePtr inst, xsltTransformFunction function,
                    xsltElemPreCompDeallocator freeFunc)
{
    comp->type = XSLT_FUNC_EXTENSION;
    comp->func = function;
    comp->inst = inst;
    comp->free = freeFunc;

    comp->next = style->preComps;
    style->preComps = comp;
}
