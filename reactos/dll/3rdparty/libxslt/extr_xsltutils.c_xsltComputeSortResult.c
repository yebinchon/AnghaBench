
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylePreCompPtr ;
typedef int xsltStyleItemSortPtr ;
typedef scalar_t__ xsltLocale ;
typedef TYPE_4__* xmlXPathObjectPtr ;
typedef int xmlNsPtr ;
typedef TYPE_5__* xmlNodeSetPtr ;
typedef TYPE_6__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_23__ {TYPE_3__* psvi; } ;
struct TYPE_22__ {int nodeNr; TYPE_6__** nodeTab; } ;
struct TYPE_21__ {scalar_t__ type; int index; int * stringval; } ;
struct TYPE_20__ {int nsNr; scalar_t__ locale; scalar_t__ number; int * comp; int * nsList; TYPE_1__* inScopeNs; int * select; } ;
struct TYPE_19__ {TYPE_15__* xpathCtxt; TYPE_6__* inst; TYPE_6__* node; int state; TYPE_5__* nodeList; } ;
struct TYPE_18__ {int xpathNumber; int * list; } ;
struct TYPE_17__ {int proximityPosition; int contextSize; int nsNr; int * namespaces; TYPE_6__* node; } ;


 scalar_t__ XPATH_NUMBER ;
 scalar_t__ XPATH_STRING ;
 int XSLT_STATE_STOPPED ;
 int xmlFree (int *) ;
 TYPE_4__** xmlMalloc (int) ;
 TYPE_4__* xmlXPathCompiledEval (int *,TYPE_15__*) ;
 TYPE_4__* xmlXPathConvertNumber (TYPE_4__*) ;
 TYPE_4__* xmlXPathConvertString (TYPE_4__*) ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 int xsltGenericError (int ,char*) ;
 int xsltGenericErrorContext ;
 scalar_t__ xsltStrxfrm (scalar_t__,int *) ;

xmlXPathObjectPtr *
xsltComputeSortResult(xsltTransformContextPtr ctxt, xmlNodePtr sort) {



    xsltStylePreCompPtr comp;

    xmlXPathObjectPtr *results = ((void*)0);
    xmlNodeSetPtr list = ((void*)0);
    xmlXPathObjectPtr res;
    int len = 0;
    int i;
    xmlNodePtr oldNode;
    xmlNodePtr oldInst;
    int oldPos, oldSize ;
    int oldNsNr;
    xmlNsPtr *oldNamespaces;

    comp = sort->psvi;
    if (comp == ((void*)0)) {
 xsltGenericError(xsltGenericErrorContext,
      "xsl:sort : compilation failed\n");
 return(((void*)0));
    }

    if ((comp->select == ((void*)0)) || (comp->comp == ((void*)0)))
 return(((void*)0));

    list = ctxt->nodeList;
    if ((list == ((void*)0)) || (list->nodeNr <= 1))
 return(((void*)0));

    len = list->nodeNr;





    results = xmlMalloc(len * sizeof(xmlXPathObjectPtr));
    if (results == ((void*)0)) {
 xsltGenericError(xsltGenericErrorContext,
      "xsltComputeSortResult: memory allocation failure\n");
 return(((void*)0));
    }

    oldNode = ctxt->node;
    oldInst = ctxt->inst;
    oldPos = ctxt->xpathCtxt->proximityPosition;
    oldSize = ctxt->xpathCtxt->contextSize;
    oldNsNr = ctxt->xpathCtxt->nsNr;
    oldNamespaces = ctxt->xpathCtxt->namespaces;
    for (i = 0;i < len;i++) {
 ctxt->inst = sort;
 ctxt->xpathCtxt->contextSize = len;
 ctxt->xpathCtxt->proximityPosition = i + 1;
 ctxt->node = list->nodeTab[i];
 ctxt->xpathCtxt->node = ctxt->node;
 ctxt->xpathCtxt->namespaces = comp->nsList;
 ctxt->xpathCtxt->nsNr = comp->nsNr;

 res = xmlXPathCompiledEval(comp->comp, ctxt->xpathCtxt);
 if (res != ((void*)0)) {
     if (res->type != XPATH_STRING)
  res = xmlXPathConvertString(res);
     if (comp->number)
  res = xmlXPathConvertNumber(res);
     res->index = i;
     if (comp->number) {
  if (res->type == XPATH_NUMBER) {
      results[i] = res;
  } else {




      results[i] = ((void*)0);
  }
     } else {
  if (res->type == XPATH_STRING) {
      if (comp->locale != (xsltLocale)0) {
   xmlChar *str = res->stringval;
   res->stringval = (xmlChar *) xsltStrxfrm(comp->locale, str);
   xmlFree(str);
      }

      results[i] = res;
  } else {




      results[i] = ((void*)0);
  }
     }
 } else {
     ctxt->state = XSLT_STATE_STOPPED;
     results[i] = ((void*)0);
 }
    }
    ctxt->node = oldNode;
    ctxt->inst = oldInst;
    ctxt->xpathCtxt->contextSize = oldSize;
    ctxt->xpathCtxt->proximityPosition = oldPos;
    ctxt->xpathCtxt->nsNr = oldNsNr;
    ctxt->xpathCtxt->namespaces = oldNamespaces;

    return(results);
}
