
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef int xsltStyleItemIfPtr ;
typedef int xsltElemPreCompPtr ;
typedef TYPE_3__* xmlXPathObjectPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef scalar_t__ xmlDocPtr ;
struct TYPE_27__ {int children; } ;
struct TYPE_26__ {scalar_t__ type; int boolval; } ;
struct TYPE_25__ {int * test; int * comp; } ;
struct TYPE_24__ {scalar_t__ localRVT; void* state; } ;


 scalar_t__ XPATH_BOOLEAN ;
 void* XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_1__*,int ,int ) ;
 int XSLT_TRACE_IF ;
 TYPE_3__* xmlXPathConvertBoolean (TYPE_3__*) ;
 int xmlXPathFreeObject (TYPE_3__*) ;
 int xsltApplySequenceConstructor (TYPE_1__*,TYPE_4__*,int ,int *) ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 TYPE_3__* xsltPreCompEval (TYPE_1__*,TYPE_4__*,TYPE_2__*) ;
 int xsltPreCompEvalToBoolean (TYPE_1__*,TYPE_4__*,TYPE_2__*) ;
 int xsltReleaseLocalRVTs (TYPE_1__*,scalar_t__) ;
 int xsltTransformError (TYPE_1__*,int *,TYPE_4__*,char*) ;

void
xsltIf(xsltTransformContextPtr ctxt, xmlNodePtr contextNode,
            xmlNodePtr inst, xsltElemPreCompPtr castedComp)
{
    int res = 0;




    xsltStylePreCompPtr comp = (xsltStylePreCompPtr) castedComp;


    if ((ctxt == ((void*)0)) || (contextNode == ((void*)0)) || (inst == ((void*)0)))
 return;
    if ((comp == ((void*)0)) || (comp->test == ((void*)0)) || (comp->comp == ((void*)0))) {
 xsltTransformError(ctxt, ((void*)0), inst,
     "Internal error in xsltIf(): "
     "The XSLT 'if' instruction was not compiled.\n");
 return;
    }
    {



 xmlXPathObjectPtr xpobj = xsltPreCompEval(ctxt, contextNode, comp);
 if (xpobj != ((void*)0)) {
     if (xpobj->type != XPATH_BOOLEAN)
  xpobj = xmlXPathConvertBoolean(xpobj);
     if (xpobj->type == XPATH_BOOLEAN) {
  res = xpobj->boolval;





  if (res) {
      xsltApplySequenceConstructor(ctxt,
   contextNode, inst->children, ((void*)0));
  }
     } else {






  ctxt->state = XSLT_STATE_STOPPED;
     }
     xmlXPathFreeObject(xpobj);
 } else {
     ctxt->state = XSLT_STATE_STOPPED;
 }
    }


error:
    return;
}
