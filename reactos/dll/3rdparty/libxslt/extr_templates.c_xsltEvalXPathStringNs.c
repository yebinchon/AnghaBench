
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xmlXPathObjectPtr ;
typedef int xmlXPathCompExprPtr ;
typedef int xmlNsPtr ;
typedef void* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_13__ {int proximityPosition; int contextSize; int nsNr; int * namespaces; void* node; } ;
struct TYPE_12__ {scalar_t__ type; int * stringval; } ;
struct TYPE_11__ {TYPE_9__* xpathCtxt; void* node; int * inst; int state; } ;


 scalar_t__ XPATH_STRING ;
 int XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_1__*,int ,int ) ;
 int XSLT_TRACE_TEMPLATES ;
 TYPE_2__* xmlXPathCompiledEval (int ,TYPE_9__*) ;
 TYPE_2__* xmlXPathConvertString (TYPE_2__*) ;
 int xmlXPathFreeObject (TYPE_2__*) ;
 int xsltGenericDebug (int ,char*,int *) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*) ;

xmlChar *
xsltEvalXPathStringNs(xsltTransformContextPtr ctxt, xmlXPathCompExprPtr comp,
               int nsNr, xmlNsPtr *nsList) {
    xmlChar *ret = ((void*)0);
    xmlXPathObjectPtr res;
    xmlNodePtr oldInst;
    xmlNodePtr oldNode;
    int oldPos, oldSize;
    int oldNsNr;
    xmlNsPtr *oldNamespaces;

    if ((ctxt == ((void*)0)) || (ctxt->inst == ((void*)0))) {
        xsltTransformError(ctxt, ((void*)0), ((void*)0),
            "xsltEvalXPathStringNs: No context or instruction\n");
        return(0);
    }

    oldInst = ctxt->inst;
    oldNode = ctxt->node;
    oldPos = ctxt->xpathCtxt->proximityPosition;
    oldSize = ctxt->xpathCtxt->contextSize;
    oldNsNr = ctxt->xpathCtxt->nsNr;
    oldNamespaces = ctxt->xpathCtxt->namespaces;

    ctxt->xpathCtxt->node = ctxt->node;

    ctxt->xpathCtxt->namespaces = nsList;
    ctxt->xpathCtxt->nsNr = nsNr;
    res = xmlXPathCompiledEval(comp, ctxt->xpathCtxt);
    if (res != ((void*)0)) {
 if (res->type != XPATH_STRING)
     res = xmlXPathConvertString(res);
 if (res->type == XPATH_STRING) {
            ret = res->stringval;
     res->stringval = ((void*)0);
 } else {
     xsltTransformError(ctxt, ((void*)0), ((void*)0),
   "xpath : string() function didn't return a String\n");
 }
 xmlXPathFreeObject(res);
    } else {
 ctxt->state = XSLT_STATE_STOPPED;
    }




    ctxt->inst = oldInst;
    ctxt->node = oldNode;
    ctxt->xpathCtxt->contextSize = oldSize;
    ctxt->xpathCtxt->proximityPosition = oldPos;
    ctxt->xpathCtxt->nsNr = oldNsNr;
    ctxt->xpathCtxt->namespaces = oldNamespaces;
    return(ret);
}
