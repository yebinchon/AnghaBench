
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylePreCompPtr ;
typedef TYPE_4__* xmlXPathContextPtr ;
typedef int xmlNsPtr ;
typedef void* xmlNodePtr ;
struct TYPE_11__ {int proximityPosition; int contextSize; int nsNr; int * namespaces; void* node; } ;
struct TYPE_10__ {int nsNr; int comp; int * nsList; TYPE_1__* inScopeNs; } ;
struct TYPE_9__ {TYPE_4__* xpathCtxt; } ;
struct TYPE_8__ {int xpathNumber; int * list; } ;


 int xmlXPathCompiledEvalToBoolean (int ,TYPE_4__*) ;

__attribute__((used)) static int
xsltPreCompEvalToBoolean(xsltTransformContextPtr ctxt, xmlNodePtr node,
                         xsltStylePreCompPtr comp) {
    int res;
    xmlXPathContextPtr xpctxt;
    xmlNodePtr oldXPContextNode;
    xmlNsPtr *oldXPNamespaces;
    int oldXPProximityPosition, oldXPContextSize, oldXPNsNr;

    xpctxt = ctxt->xpathCtxt;
    oldXPContextNode = xpctxt->node;
    oldXPProximityPosition = xpctxt->proximityPosition;
    oldXPContextSize = xpctxt->contextSize;
    oldXPNsNr = xpctxt->nsNr;
    oldXPNamespaces = xpctxt->namespaces;

    xpctxt->node = node;
    xpctxt->namespaces = comp->nsList;
    xpctxt->nsNr = comp->nsNr;


    res = xmlXPathCompiledEvalToBoolean(comp->comp, xpctxt);

    xpctxt->node = oldXPContextNode;
    xpctxt->proximityPosition = oldXPProximityPosition;
    xpctxt->contextSize = oldXPContextSize;
    xpctxt->nsNr = oldXPNsNr;
    xpctxt->namespaces = oldXPNamespaces;

    return(res);
}
