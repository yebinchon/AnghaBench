
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_3__* xsltTransformContextPtr ;
typedef TYPE_4__* xmlXPathObjectPtr ;
typedef TYPE_5__* xmlNsPtr ;
typedef TYPE_6__* xmlNodePtr ;
typedef TYPE_7__* xmlDocPtr ;
struct TYPE_19__ {char* name; void* psvi; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_7__* doc; } ;
struct TYPE_17__ {TYPE_2__* next; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_1__* nodesetval; } ;
struct TYPE_15__ {int inst; } ;
struct TYPE_14__ {scalar_t__ type; } ;
struct TYPE_13__ {int nodeNr; TYPE_6__** nodeTab; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 scalar_t__ XPATH_NODESET ;
 scalar_t__ XPATH_XSLT_TREE ;
 void* XSLT_RVT_FUNC_RESULT ;
 void* XSLT_RVT_GLOBAL ;
 void* XSLT_RVT_LOCAL ;
 int XSLT_TRACE (TYPE_3__*,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int xmlGenericError (int ,char*,void*) ;
 int xmlGenericErrorContext ;
 int xsltGenericDebug (int ,char*,TYPE_7__*,void*,void*) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (TYPE_3__*,int *,int ,char*) ;

int
xsltFlagRVTs(xsltTransformContextPtr ctxt, xmlXPathObjectPtr obj, void *val) {
    int i;
    xmlNodePtr cur;
    xmlDocPtr doc;

    if ((ctxt == ((void*)0)) || (obj == ((void*)0)))
 return(-1);







    if ((obj->type != XPATH_NODESET) && (obj->type != XPATH_XSLT_TREE))
 return(0);
    if ((obj->nodesetval == ((void*)0)) || (obj->nodesetval->nodeNr == 0))
 return(0);

    for (i = 0; i < obj->nodesetval->nodeNr; i++) {
 cur = obj->nodesetval->nodeTab[i];
 if (cur->type == XML_NAMESPACE_DECL) {




     if ((((xmlNsPtr) cur)->next != ((void*)0)) &&
  (((xmlNsPtr) cur)->next->type == XML_ELEMENT_NODE))
     {
  cur = (xmlNodePtr) ((xmlNsPtr) cur)->next;
  doc = cur->doc;
     } else {
  xsltTransformError(ctxt, ((void*)0), ctxt->inst,
      "Internal error in xsltFlagRVTs(): "
      "Cannot retrieve the doc of a namespace node.\n");
  return(-1);
     }
 } else {
     doc = cur->doc;
 }
 if (doc == ((void*)0)) {
     xsltTransformError(ctxt, ((void*)0), ctxt->inst,
  "Internal error in xsltFlagRVTs(): "
  "Cannot retrieve the doc of a node.\n");
     return(-1);
 }
 if (doc->name && (doc->name[0] == ' ') &&
            doc->psvi != XSLT_RVT_GLOBAL) {
            if (val == XSLT_RVT_LOCAL) {
                if (doc->psvi == XSLT_RVT_FUNC_RESULT)
                    doc->psvi = XSLT_RVT_LOCAL;
            } else if (val == XSLT_RVT_GLOBAL) {
                if (doc->psvi != XSLT_RVT_LOCAL) {
      xmlGenericError(xmlGenericErrorContext,
                            "xsltFlagRVTs: Invalid transition %p => GLOBAL\n",
                            doc->psvi);
                    doc->psvi = XSLT_RVT_GLOBAL;
                    return(-1);
                }


                doc->psvi = XSLT_RVT_GLOBAL;
            } else if (val == XSLT_RVT_FUNC_RESULT) {
         doc->psvi = val;
            }
 }
    }

    return(0);
}
