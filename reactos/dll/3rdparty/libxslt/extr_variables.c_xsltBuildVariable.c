
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef TYPE_1__* xsltStylePreCompPtr ;
typedef int xsltStyleBasicItemVariablePtr ;
typedef TYPE_2__* xsltStackElemPtr ;
typedef int xmlNodePtr ;
struct TYPE_9__ {int computed; int value; int tree; int nameURI; int * select; int name; TYPE_1__* comp; } ;
struct TYPE_8__ {int ns; int * select; int name; } ;


 int XSLT_TRACE (int ,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int xsltEvalVariable (int ,TYPE_2__*,TYPE_1__*) ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 TYPE_2__* xsltNewStackElem (int ) ;

__attribute__((used)) static xsltStackElemPtr
xsltBuildVariable(xsltTransformContextPtr ctxt,
    xsltStylePreCompPtr castedComp,
    xmlNodePtr tree)
{




    xsltStylePreCompPtr comp = castedComp;

    xsltStackElemPtr elem;
    elem = xsltNewStackElem(ctxt);
    if (elem == ((void*)0))
 return(((void*)0));
    elem->comp = (xsltStylePreCompPtr) comp;
    elem->name = comp->name;
    elem->select = comp->select;
    elem->nameURI = comp->ns;
    elem->tree = tree;
    elem->value = xsltEvalVariable(ctxt, elem,
 (xsltStylePreCompPtr) comp);
    elem->computed = 1;
    return(elem);
}
