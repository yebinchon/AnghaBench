
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylePreCompPtr ;
typedef TYPE_3__* xsltStyleBasicItemVariablePtr ;
typedef TYPE_5__* xsltStackElemPtr ;
typedef TYPE_6__* xmlXPathObjectPtr ;
typedef TYPE_7__* xmlXPathContextPtr ;
typedef int * xmlXPathCompExprPtr ;
typedef int xmlNsPtr ;
typedef void* xmlNodePtr ;
typedef int * xmlDocPtr ;
typedef int const xmlChar ;
struct TYPE_29__ {int proximityPosition; int contextSize; int nsNr; int * doc; int * namespaces; void* node; } ;
struct TYPE_28__ {scalar_t__ boolval; } ;
struct TYPE_27__ {int computed; TYPE_6__* value; int const* name; int * tree; int * select; TYPE_3__* comp; } ;
struct TYPE_26__ {int nsNr; int * inst; int * comp; int * nsList; TYPE_1__* inScopeNs; } ;
struct TYPE_25__ {scalar_t__ debugStatus; int * inst; int * output; void* insert; TYPE_7__* xpathCtxt; int node; int * initialContextDoc; int state; void* initialContextNode; } ;
struct TYPE_24__ {int xpathNumber; int * list; } ;
typedef int FILE ;


 scalar_t__ XSLT_DEBUG_NONE ;
 int XSLT_RVT_GLOBAL ;
 int XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_2__*,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;
 int * xmlXPathCompile (int *) ;
 TYPE_6__* xmlXPathCompiledEval (int *,TYPE_7__*) ;
 int xmlXPathDebugDumpObject (int *,TYPE_6__*,int ) ;
 int xmlXPathFreeCompExpr (int *) ;
 TYPE_6__* xmlXPathNewCString (char*) ;
 TYPE_6__* xmlXPathNewValueTree (void*) ;
 int xslHandleDebugger (int *,int *,int *,TYPE_2__*) ;
 int xsltApplyOneTemplate (TYPE_2__*,int ,int *,int *,int *) ;
 int const* xsltComputingGlobalVarMarker ;
 int * xsltCreateRVT (TYPE_2__*) ;
 int xsltFlagRVTs (TYPE_2__*,TYPE_6__*,int ) ;
 int xsltGenericDebug (scalar_t__,char*,int const*) ;
 scalar_t__ xsltGenericDebugContext ;
 int xsltRegisterPersistRVT (TYPE_2__*,int *) ;
 int xsltTransformError (TYPE_2__*,int *,int *,char*,int const*) ;

__attribute__((used)) static xmlXPathObjectPtr
xsltEvalGlobalVariable(xsltStackElemPtr elem, xsltTransformContextPtr ctxt)
{
    xmlXPathObjectPtr result = ((void*)0);
    xmlNodePtr oldInst;
    const xmlChar* oldVarName;




    xsltStylePreCompPtr comp;


    if ((ctxt == ((void*)0)) || (elem == ((void*)0)))
 return(((void*)0));
    if (elem->computed)
 return(elem->value);
    oldInst = ctxt->inst;



    comp = elem->comp;

    oldVarName = elem->name;
    elem->name = xsltComputingGlobalVarMarker;






    if (elem->select != ((void*)0)) {
 xmlXPathCompExprPtr xpExpr = ((void*)0);
 xmlDocPtr oldXPDoc;
 xmlNodePtr oldXPContextNode;
 int oldXPProximityPosition, oldXPContextSize, oldXPNsNr;
 xmlNsPtr *oldXPNamespaces;
 xmlXPathContextPtr xpctxt = ctxt->xpathCtxt;

 if ((comp != ((void*)0)) && (comp->comp != ((void*)0))) {
     xpExpr = comp->comp;
 } else {
     xpExpr = xmlXPathCompile(elem->select);
 }
 if (xpExpr == ((void*)0))
     goto error;


 if (comp != ((void*)0))
     ctxt->inst = comp->inst;
 else
     ctxt->inst = ((void*)0);
 oldXPDoc = xpctxt->doc;
 oldXPContextNode = xpctxt->node;
 oldXPProximityPosition = xpctxt->proximityPosition;
 oldXPContextSize = xpctxt->contextSize;
 oldXPNamespaces = xpctxt->namespaces;
 oldXPNsNr = xpctxt->nsNr;

 xpctxt->node = ctxt->initialContextNode;
 xpctxt->doc = ctxt->initialContextDoc;
 xpctxt->contextSize = 1;
 xpctxt->proximityPosition = 1;

 if (comp != ((void*)0)) {
     xpctxt->namespaces = comp->nsList;
     xpctxt->nsNr = comp->nsNr;

 } else {
     xpctxt->namespaces = ((void*)0);
     xpctxt->nsNr = 0;
 }

 result = xmlXPathCompiledEval(xpExpr, xpctxt);




 xpctxt->doc = oldXPDoc;
 xpctxt->node = oldXPContextNode;
 xpctxt->contextSize = oldXPContextSize;
 xpctxt->proximityPosition = oldXPProximityPosition;
 xpctxt->namespaces = oldXPNamespaces;
 xpctxt->nsNr = oldXPNsNr;

 if ((comp == ((void*)0)) || (comp->comp == ((void*)0)))
     xmlXPathFreeCompExpr(xpExpr);
 if (result == ((void*)0)) {
     if (comp == ((void*)0))
  xsltTransformError(ctxt, ((void*)0), ((void*)0),
      "Evaluating global variable %s failed\n", elem->name);
     else
  xsltTransformError(ctxt, ((void*)0), comp->inst,
      "Evaluating global variable %s failed\n", elem->name);
     ctxt->state = XSLT_STATE_STOPPED;
            goto error;
        }





        xsltFlagRVTs(ctxt, result, XSLT_RVT_GLOBAL);
    } else {
 if (elem->tree == ((void*)0)) {
     result = xmlXPathNewCString("");
 } else {
     xmlDocPtr container;
     xmlNodePtr oldInsert;
     xmlDocPtr oldOutput, oldXPDoc;



     container = xsltCreateRVT(ctxt);
     if (container == ((void*)0))
  goto error;




     xsltRegisterPersistRVT(ctxt, container);

     oldOutput = ctxt->output;
     oldInsert = ctxt->insert;

     oldXPDoc = ctxt->xpathCtxt->doc;

     ctxt->output = container;
     ctxt->insert = (xmlNodePtr) container;

     ctxt->xpathCtxt->doc = ctxt->initialContextDoc;



     xsltApplyOneTemplate(ctxt, ctxt->node, elem->tree, ((void*)0), ((void*)0));

     ctxt->xpathCtxt->doc = oldXPDoc;

     ctxt->insert = oldInsert;
     ctxt->output = oldOutput;

     result = xmlXPathNewValueTree((xmlNodePtr) container);
     if (result == ((void*)0)) {
  result = xmlXPathNewCString("");
     } else {
         result->boolval = 0;
     }
 }
    }

error:
    elem->name = oldVarName;
    ctxt->inst = oldInst;
    if (result != ((void*)0)) {
 elem->value = result;
 elem->computed = 1;
    }
    return(result);
}
