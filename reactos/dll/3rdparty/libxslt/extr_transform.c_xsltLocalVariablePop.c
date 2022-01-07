
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStackElemPtr ;
struct TYPE_6__ {int level; } ;
struct TYPE_5__ {int varsNr; TYPE_2__* vars; TYPE_2__** varsTab; } ;


 int xsltFreeStackElemList (TYPE_2__*) ;

void
xsltLocalVariablePop(xsltTransformContextPtr ctxt, int limitNr, int level)
{
    xsltStackElemPtr variable;

    if (ctxt->varsNr <= 0)
        return;

    do {
 if (ctxt->varsNr <= limitNr)
     break;
 variable = ctxt->varsTab[ctxt->varsNr - 1];
 if (variable->level <= level)
     break;
 if (variable->level >= 0)
     xsltFreeStackElemList(variable);
 ctxt->varsNr--;
    } while (ctxt->varsNr != 0);
    if (ctxt->varsNr > 0)
        ctxt->vars = ctxt->varsTab[ctxt->varsNr - 1];
    else
        ctxt->vars = ((void*)0);
}
