
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylePreCompPtr ;
typedef int xsltStyleItemVariablePtr ;
typedef TYPE_4__* xsltStackElemPtr ;
typedef TYPE_5__* xmlXPathObjectPtr ;
typedef TYPE_6__* xmlXPathContextPtr ;
typedef int * xmlXPathCompExprPtr ;
typedef int xmlNsPtr ;
typedef void* xmlNodePtr ;
typedef TYPE_7__* xmlDocPtr ;
struct TYPE_30__ {int psvi; } ;
struct TYPE_29__ {int proximityPosition; int contextSize; int nsNr; int * namespaces; TYPE_16__* node; TYPE_7__* doc; } ;
struct TYPE_28__ {scalar_t__ boolval; } ;
struct TYPE_27__ {int * tree; TYPE_7__* fragment; int name; int flags; int * select; } ;
struct TYPE_26__ {int nsNr; int * inst; int * comp; int * nsList; TYPE_1__* inScopeNs; } ;
struct TYPE_25__ {void* inst; TYPE_7__* output; void* insert; TYPE_4__* contextVariable; TYPE_16__* node; int state; TYPE_6__* xpathCtxt; } ;
struct TYPE_24__ {int xpathNumber; int * list; } ;
struct TYPE_23__ {scalar_t__ type; TYPE_7__* doc; } ;
typedef int FILE ;


 scalar_t__ XML_NAMESPACE_DECL ;
 int XSLT_RVT_LOCAL ;
 int XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_2__*,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int XSLT_VAR_IN_SELECT ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;
 int * xmlXPathCompile (int *) ;
 TYPE_5__* xmlXPathCompiledEval (int *,TYPE_6__*) ;
 int xmlXPathDebugDumpObject (int *,TYPE_5__*,int ) ;
 int xmlXPathFreeCompExpr (int *) ;
 TYPE_5__* xmlXPathNewCString (char*) ;
 TYPE_5__* xmlXPathNewValueTree (void*) ;
 int xsltApplyOneTemplate (TYPE_2__*,TYPE_16__*,int *,int *,int *) ;
 TYPE_7__* xsltCreateRVT (TYPE_2__*) ;
 int xsltGenericDebug (scalar_t__,char*,int ) ;
 scalar_t__ xsltGenericDebugContext ;
 int xsltTransformError (TYPE_2__*,int *,int *,char*,int ) ;

__attribute__((used)) static xmlXPathObjectPtr
xsltEvalVariable(xsltTransformContextPtr ctxt, xsltStackElemPtr variable,
          xsltStylePreCompPtr castedComp)
{




    xsltStylePreCompPtr comp = castedComp;

    xmlXPathObjectPtr result = ((void*)0);
    xmlNodePtr oldInst;

    if ((ctxt == ((void*)0)) || (variable == ((void*)0)))
 return(((void*)0));






    oldInst = ctxt->inst;





    if (variable->select != ((void*)0)) {
 xmlXPathCompExprPtr xpExpr = ((void*)0);
 xmlDocPtr oldXPDoc;
 xmlNodePtr oldXPContextNode;
 int oldXPProximityPosition, oldXPContextSize, oldXPNsNr;
 xmlNsPtr *oldXPNamespaces;
 xmlXPathContextPtr xpctxt = ctxt->xpathCtxt;
 xsltStackElemPtr oldVar = ctxt->contextVariable;

 if ((comp != ((void*)0)) && (comp->comp != ((void*)0))) {
     xpExpr = comp->comp;
 } else {
     xpExpr = xmlXPathCompile(variable->select);
 }
 if (xpExpr == ((void*)0))
     return(((void*)0));



 oldXPDoc = xpctxt->doc;
 oldXPContextNode = xpctxt->node;
 oldXPProximityPosition = xpctxt->proximityPosition;
 oldXPContextSize = xpctxt->contextSize;
 oldXPNamespaces = xpctxt->namespaces;
 oldXPNsNr = xpctxt->nsNr;

 xpctxt->node = ctxt->node;




 if ((ctxt->node->type != XML_NAMESPACE_DECL) &&
     ctxt->node->doc)
     xpctxt->doc = ctxt->node->doc;
 if (comp != ((void*)0)) {
     xpctxt->namespaces = comp->nsList;
     xpctxt->nsNr = comp->nsNr;

 } else {
     xpctxt->namespaces = ((void*)0);
     xpctxt->nsNr = 0;
 }
 ctxt->contextVariable = variable;
 variable->flags |= XSLT_VAR_IN_SELECT;

 result = xmlXPathCompiledEval(xpExpr, xpctxt);

 variable->flags ^= XSLT_VAR_IN_SELECT;



 ctxt->contextVariable = oldVar;

 xpctxt->doc = oldXPDoc;
 xpctxt->node = oldXPContextNode;
 xpctxt->contextSize = oldXPContextSize;
 xpctxt->proximityPosition = oldXPProximityPosition;
 xpctxt->namespaces = oldXPNamespaces;
 xpctxt->nsNr = oldXPNsNr;

 if ((comp == ((void*)0)) || (comp->comp == ((void*)0)))
     xmlXPathFreeCompExpr(xpExpr);
 if (result == ((void*)0)) {
     xsltTransformError(ctxt, ((void*)0),
  (comp != ((void*)0)) ? comp->inst : ((void*)0),
  "Failed to evaluate the expression of variable '%s'.\n",
  variable->name);
     ctxt->state = XSLT_STATE_STOPPED;
 }
    } else {
 if (variable->tree == ((void*)0)) {
     result = xmlXPathNewCString("");
 } else {
     if (variable->tree) {
  xmlDocPtr container;
  xmlNodePtr oldInsert;
  xmlDocPtr oldOutput;
  xsltStackElemPtr oldVar = ctxt->contextVariable;




  container = xsltCreateRVT(ctxt);
  if (container == ((void*)0))
      goto error;
  variable->fragment = container;
                container->psvi = XSLT_RVT_LOCAL;

  oldOutput = ctxt->output;
  oldInsert = ctxt->insert;

  ctxt->output = container;
  ctxt->insert = (xmlNodePtr) container;
  ctxt->contextVariable = variable;




  xsltApplyOneTemplate(ctxt, ctxt->node, variable->tree,
      ((void*)0), ((void*)0));

  ctxt->contextVariable = oldVar;
  ctxt->insert = oldInsert;
  ctxt->output = oldOutput;

  result = xmlXPathNewValueTree((xmlNodePtr) container);
     }
     if (result == ((void*)0)) {
  result = xmlXPathNewCString("");
     } else {




         result->boolval = 0;
     }
 }
    }

error:
    ctxt->inst = oldInst;
    return(result);
}
