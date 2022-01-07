
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef int xsltStyleItemCopyOfPtr ;
typedef int xsltElemPreCompPtr ;
typedef TYPE_3__* xmlXPathObjectPtr ;
typedef TYPE_4__* xmlNodeSetPtr ;
typedef TYPE_5__* xmlNodePtr ;
typedef scalar_t__ xmlChar ;
typedef int xmlAttrPtr ;
struct TYPE_31__ {scalar_t__ type; int children; } ;
struct TYPE_30__ {int nodeNr; TYPE_5__** nodeTab; } ;
struct TYPE_29__ {scalar_t__ type; int * stringval; TYPE_4__* nodesetval; } ;
struct TYPE_28__ {int * select; int * comp; } ;
struct TYPE_27__ {void* state; int insert; } ;


 scalar_t__ IS_XSLT_REAL_NODE (TYPE_5__*) ;
 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_DOCUMENT_NODE ;
 scalar_t__ XML_HTML_DOCUMENT_NODE ;
 scalar_t__ XPATH_NODESET ;
 scalar_t__ XPATH_XSLT_TREE ;
 void* XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_1__*,int ,int ) ;
 int XSLT_TRACE_COPY_OF ;
 int xmlFree (scalar_t__*) ;
 scalar_t__* xmlXPathCastToString (TYPE_3__*) ;
 int xmlXPathFreeObject (TYPE_3__*) ;
 int xsltCopyTextString (TYPE_1__*,int ,scalar_t__*,int ) ;
 int xsltCopyTree (TYPE_1__*,TYPE_5__*,TYPE_5__*,int ,int ,int ) ;
 int xsltCopyTreeList (TYPE_1__*,TYPE_5__*,int ,int ,int ,int ) ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 TYPE_3__* xsltPreCompEval (TYPE_1__*,TYPE_5__*,TYPE_2__*) ;
 int xsltShallowCopyAttr (TYPE_1__*,TYPE_5__*,int ,int ) ;
 int xsltTransformError (TYPE_1__*,int *,TYPE_5__*,char*) ;

void
xsltCopyOf(xsltTransformContextPtr ctxt, xmlNodePtr node,
            xmlNodePtr inst, xsltElemPreCompPtr castedComp) {



    xsltStylePreCompPtr comp = (xsltStylePreCompPtr) castedComp;

    xmlXPathObjectPtr res = ((void*)0);
    xmlNodeSetPtr list = ((void*)0);
    int i;

    if ((ctxt == ((void*)0)) || (node == ((void*)0)) || (inst == ((void*)0)))
 return;
    if ((comp == ((void*)0)) || (comp->select == ((void*)0)) || (comp->comp == ((void*)0))) {
 xsltTransformError(ctxt, ((void*)0), inst,
      "xsl:copy-of : compilation failed\n");
 return;
    }
    res = xsltPreCompEval(ctxt, node, comp);

    if (res != ((void*)0)) {
 if (res->type == XPATH_NODESET) {
     list = res->nodesetval;
     if (list != ((void*)0)) {
  xmlNodePtr cur;




  for (i = 0;i < list->nodeNr;i++) {
      cur = list->nodeTab[i];
      if (cur == ((void*)0))
   continue;
      if ((cur->type == XML_DOCUMENT_NODE) ||
   (cur->type == XML_HTML_DOCUMENT_NODE))
      {
   xsltCopyTreeList(ctxt, inst,
       cur->children, ctxt->insert, 0, 0);
      } else if (cur->type == XML_ATTRIBUTE_NODE) {
   xsltShallowCopyAttr(ctxt, inst,
       ctxt->insert, (xmlAttrPtr) cur);
      } else {
   xsltCopyTree(ctxt, inst, cur, ctxt->insert, 0, 0);
      }
  }
     }
 } else if (res->type == XPATH_XSLT_TREE) {
     list = res->nodesetval;
     if ((list != ((void*)0)) && (list->nodeTab != ((void*)0)) &&
  (list->nodeTab[0] != ((void*)0)) &&
  (IS_XSLT_REAL_NODE(list->nodeTab[0])))
     {
  xsltCopyTreeList(ctxt, inst,
      list->nodeTab[0]->children, ctxt->insert, 0, 0);
     }
 } else {
     xmlChar *value = ((void*)0);



     value = xmlXPathCastToString(res);
     if (value == ((void*)0)) {
  xsltTransformError(ctxt, ((void*)0), inst,
      "Internal error in xsltCopyOf(): "
      "failed to cast an XPath object to string.\n");
  ctxt->state = XSLT_STATE_STOPPED;
     } else {
  if (value[0] != 0) {



      xsltCopyTextString(ctxt, ctxt->insert, value, 0);
  }
  xmlFree(value);





     }
 }
    } else {
 ctxt->state = XSLT_STATE_STOPPED;
    }

    if (res != ((void*)0))
 xmlXPathFreeObject(res);
}
