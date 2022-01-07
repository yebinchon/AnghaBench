
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int * xmlXPathObjectPtr ;
typedef int xmlXPathCompExprPtr ;
typedef int xmlNsPtr ;
typedef int * xmlNodePtr ;
struct TYPE_8__ {int contextSize; int proximityPosition; int nsNr; int * namespaces; int node; } ;
struct TYPE_7__ {TYPE_4__* xpathCtxt; int * inst; int state; int node; } ;


 int XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_1__*,int ,int ) ;
 int XSLT_TRACE_TEMPLATES ;
 int * xmlXPathCompiledEval (int ,TYPE_4__*) ;
 int xmlXPathEvalPredicate (TYPE_4__*,int *) ;
 int xmlXPathFreeObject (int *) ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*) ;

int
xsltEvalXPathPredicate(xsltTransformContextPtr ctxt, xmlXPathCompExprPtr comp,
         xmlNsPtr *nsList, int nsNr) {
    int ret;
    xmlXPathObjectPtr res;
    int oldNsNr;
    xmlNsPtr *oldNamespaces;
    xmlNodePtr oldInst;
    int oldProximityPosition, oldContextSize;

    if ((ctxt == ((void*)0)) || (ctxt->inst == ((void*)0))) {
        xsltTransformError(ctxt, ((void*)0), ((void*)0),
            "xsltEvalXPathPredicate: No context or instruction\n");
        return(0);
    }

    oldContextSize = ctxt->xpathCtxt->contextSize;
    oldProximityPosition = ctxt->xpathCtxt->proximityPosition;
    oldNsNr = ctxt->xpathCtxt->nsNr;
    oldNamespaces = ctxt->xpathCtxt->namespaces;
    oldInst = ctxt->inst;

    ctxt->xpathCtxt->node = ctxt->node;
    ctxt->xpathCtxt->namespaces = nsList;
    ctxt->xpathCtxt->nsNr = nsNr;

    res = xmlXPathCompiledEval(comp, ctxt->xpathCtxt);

    if (res != ((void*)0)) {
 ret = xmlXPathEvalPredicate(ctxt->xpathCtxt, res);
 xmlXPathFreeObject(res);




    } else {




 ctxt->state = XSLT_STATE_STOPPED;
 ret = 0;
    }
    ctxt->xpathCtxt->nsNr = oldNsNr;

    ctxt->xpathCtxt->namespaces = oldNamespaces;
    ctxt->inst = oldInst;
    ctxt->xpathCtxt->contextSize = oldContextSize;
    ctxt->xpathCtxt->proximityPosition = oldProximityPosition;

    return(ret);
}
