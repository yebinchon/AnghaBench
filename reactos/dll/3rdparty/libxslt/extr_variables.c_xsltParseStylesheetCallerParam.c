
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * xsltTransformContextPtr ;
typedef TYPE_1__* xsltStylePreCompPtr ;
typedef TYPE_1__* xsltStyleBasicItemVariablePtr ;
typedef int * xsltStackElemPtr ;
typedef TYPE_3__* xmlNodePtr ;
struct TYPE_9__ {scalar_t__ type; struct TYPE_9__* children; scalar_t__ psvi; } ;
struct TYPE_8__ {int * select; int * name; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_TRACE (int *,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int * xsltBuildVariable (int *,TYPE_1__*,TYPE_3__*) ;
 int xsltGenericDebug (int ,char*,int *) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (int *,int *,TYPE_3__*,char*) ;

xsltStackElemPtr
xsltParseStylesheetCallerParam(xsltTransformContextPtr ctxt, xmlNodePtr inst)
{



    xsltStylePreCompPtr comp;

    xmlNodePtr tree = ((void*)0);

    xsltStackElemPtr param = ((void*)0);

    if ((ctxt == ((void*)0)) || (inst == ((void*)0)) || (inst->type != XML_ELEMENT_NODE))
 return(((void*)0));




    comp = (xsltStylePreCompPtr) inst->psvi;


    if (comp == ((void*)0)) {
        xsltTransformError(ctxt, ((void*)0), inst,
     "Internal error in xsltParseStylesheetCallerParam(): "
     "The XSLT 'with-param' instruction was not compiled.\n");
        return(((void*)0));
    }
    if (comp->name == ((void*)0)) {
 xsltTransformError(ctxt, ((void*)0), inst,
     "Internal error in xsltParseStylesheetCallerParam(): "
     "XSLT 'with-param': The attribute 'name' was not compiled.\n");
 return(((void*)0));
    }






    if (comp->select == ((void*)0)) {
 tree = inst->children;
    } else {




 tree = inst;
    }

    param = xsltBuildVariable(ctxt, (xsltStylePreCompPtr) comp, tree);

    return(param);
}
