
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef TYPE_1__* xsltStylePreCompPtr ;
typedef int xsltStyleBasicItemVariablePtr ;
typedef int xsltStackElemPtr ;
typedef int xmlNodePtr ;
struct TYPE_4__ {int name; int inst; int ns; } ;


 int XSLT_TRACE (int ,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int xsltAddStackElem (int ,int ) ;
 int xsltBuildVariable (int ,TYPE_1__*,int ) ;
 int xsltCheckStackElem (int ,int ,int ) ;
 int xsltGenericDebug (int ,char*,int ) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (int ,int *,int ,char*,int ) ;

__attribute__((used)) static int
xsltRegisterVariable(xsltTransformContextPtr ctxt,
       xsltStylePreCompPtr castedComp,
       xmlNodePtr tree, int isParam)
{




    xsltStylePreCompPtr comp = castedComp;
    int present;

    xsltStackElemPtr variable;
    present = xsltCheckStackElem(ctxt, comp->name, comp->ns);
    if (isParam == 0) {
 if ((present != 0) && (present != 3)) {

     xsltTransformError(ctxt, ((void*)0), comp->inst,
  "XSLT-variable: Redefinition of variable '%s'.\n", comp->name);
     return(0);
 }
    } else if (present != 0) {
 if ((present == 1) || (present == 2)) {

     xsltTransformError(ctxt, ((void*)0), comp->inst,
  "XSLT-param: Redefinition of parameter '%s'.\n", comp->name);
     return(0);
 }




 return(0);
    }


    variable = xsltBuildVariable(ctxt, (xsltStylePreCompPtr) comp, tree);
    xsltAddStackElem(ctxt, variable);
    return(0);
}
