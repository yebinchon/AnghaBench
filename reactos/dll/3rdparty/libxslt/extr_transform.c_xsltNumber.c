
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylePreCompPtr ;
typedef int xsltStyleItemNumberPtr ;
typedef int xsltElemPreCompPtr ;
typedef TYPE_4__* xmlXPathContextPtr ;
typedef int xmlNsPtr ;
typedef TYPE_5__* xmlNodePtr ;
struct TYPE_19__ {TYPE_5__* node; int doc; } ;
struct TYPE_18__ {int doc; } ;
struct TYPE_17__ {int nsNr; int * namespaces; } ;
struct TYPE_16__ {int nsNr; TYPE_9__ numdata; int * nsList; TYPE_1__* inScopeNs; } ;
struct TYPE_15__ {TYPE_4__* xpathCtxt; } ;
struct TYPE_14__ {int xpathNumber; int * list; } ;


 int xsltNumberFormat (TYPE_2__*,TYPE_9__*,TYPE_5__*) ;
 int xsltTransformError (TYPE_2__*,int *,TYPE_5__*,char*) ;

void
xsltNumber(xsltTransformContextPtr ctxt, xmlNodePtr node,
    xmlNodePtr inst, xsltElemPreCompPtr castedComp)
{



    xsltStylePreCompPtr comp = (xsltStylePreCompPtr) castedComp;

    xmlXPathContextPtr xpctxt;
    xmlNsPtr *oldXPNamespaces;
    int oldXPNsNr;

    if (comp == ((void*)0)) {
 xsltTransformError(ctxt, ((void*)0), inst,
      "xsl:number : compilation failed\n");
 return;
    }

    if ((ctxt == ((void*)0)) || (node == ((void*)0)) || (inst == ((void*)0)) || (comp == ((void*)0)))
 return;

    comp->numdata.doc = inst->doc;
    comp->numdata.node = inst;

    xpctxt = ctxt->xpathCtxt;
    oldXPNsNr = xpctxt->nsNr;
    oldXPNamespaces = xpctxt->namespaces;
    xpctxt->namespaces = comp->nsList;
    xpctxt->nsNr = comp->nsNr;


    xsltNumberFormat(ctxt, &comp->numdata, node);

    xpctxt->nsNr = oldXPNsNr;
    xpctxt->namespaces = oldXPNamespaces;
}
