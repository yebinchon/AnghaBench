
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_18__ ;
typedef struct TYPE_36__ TYPE_14__ ;


typedef TYPE_3__* xsltTransformContextPtr ;
typedef void* xsltDocumentPtr ;
typedef TYPE_4__* xmlXPathParserContextPtr ;
typedef TYPE_5__* xmlXPathObjectPtr ;
typedef TYPE_6__* xmlXPathContextPtr ;
typedef TYPE_7__* xmlNsPtr ;
typedef TYPE_8__* xmlNodeSetPtr ;
typedef TYPE_9__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_46__ {scalar_t__ type; TYPE_14__* doc; } ;
struct TYPE_45__ {int nodeNr; int ** nodeTab; } ;
struct TYPE_44__ {TYPE_2__* next; } ;
struct TYPE_43__ {TYPE_9__* node; } ;
struct TYPE_42__ {scalar_t__ type; int * stringval; TYPE_8__* nodesetval; } ;
struct TYPE_41__ {void* error; TYPE_1__* value; TYPE_6__* context; } ;
struct TYPE_40__ {TYPE_18__* document; void* state; int * inst; } ;
struct TYPE_39__ {scalar_t__ type; } ;
struct TYPE_38__ {scalar_t__ type; } ;
struct TYPE_37__ {TYPE_14__* doc; } ;
struct TYPE_36__ {char* name; int * _private; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 void* XPATH_INVALID_ARITY ;
 void* XPATH_INVALID_TYPE ;
 scalar_t__ XPATH_NODESET ;
 scalar_t__ XPATH_STRING ;
 scalar_t__ XPATH_XSLT_TREE ;
 void* XSLT_STATE_STOPPED ;
 TYPE_5__* valuePop (TYPE_4__*) ;
 int valuePush (TYPE_4__*,TYPE_5__*) ;
 int xmlFree (int *) ;
 int * xmlSplitQName2 (int *,int **) ;
 int * xmlStrdup (int *) ;
 int xmlXPathFreeObject (TYPE_5__*) ;
 TYPE_5__* xmlXPathNewNodeSet (int *) ;
 TYPE_8__* xmlXPathNodeSetMerge (TYPE_8__*,TYPE_8__*) ;
 int * xmlXPathNsLookup (TYPE_6__*,int *) ;
 TYPE_5__* xmlXPathObjectCopy (TYPE_5__*) ;
 int xmlXPathStringFunction (TYPE_4__*,int) ;
 TYPE_5__* xmlXPathWrapNodeSet (TYPE_8__*) ;
 TYPE_18__* xsltFindDocument (TYPE_3__*,TYPE_14__*) ;
 TYPE_8__* xsltGetKey (TYPE_3__*,int *,int const*,int *) ;
 int * xsltNewDocument (TYPE_3__*,TYPE_14__*) ;
 int xsltTransformError (TYPE_3__*,int *,int *,char*,...) ;
 TYPE_3__* xsltXPathGetTransformContext (TYPE_4__*) ;

void
xsltKeyFunction(xmlXPathParserContextPtr ctxt, int nargs){
    xmlXPathObjectPtr obj1, obj2;

    if (nargs != 2) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "key() : expects two arguments\n");
 ctxt->error = XPATH_INVALID_ARITY;
 return;
    }




    obj2 = valuePop(ctxt);
    xmlXPathStringFunction(ctxt, 1);
    if ((obj2 == ((void*)0)) ||
 (ctxt->value == ((void*)0)) || (ctxt->value->type != XPATH_STRING)) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
     "key() : invalid arg expecting a string\n");
 ctxt->error = XPATH_INVALID_TYPE;
 xmlXPathFreeObject(obj2);

 return;
    }



    obj1 = valuePop(ctxt);

    if ((obj2->type == XPATH_NODESET) || (obj2->type == XPATH_XSLT_TREE)) {
 int i;
 xmlXPathObjectPtr newobj, ret;

 ret = xmlXPathNewNodeSet(((void*)0));

 if (obj2->nodesetval != ((void*)0)) {
     for (i = 0; i < obj2->nodesetval->nodeNr; i++) {
  valuePush(ctxt, xmlXPathObjectCopy(obj1));
  valuePush(ctxt,
     xmlXPathNewNodeSet(obj2->nodesetval->nodeTab[i]));
  xmlXPathStringFunction(ctxt, 1);
  xsltKeyFunction(ctxt, 2);
  newobj = valuePop(ctxt);
  ret->nodesetval = xmlXPathNodeSetMerge(ret->nodesetval,
             newobj->nodesetval);
  xmlXPathFreeObject(newobj);
     }
 }
 valuePush(ctxt, ret);
    } else {
 xmlNodeSetPtr nodelist = ((void*)0);
 xmlChar *key = ((void*)0), *value;
 const xmlChar *keyURI;
 xsltTransformContextPtr tctxt;
 xmlChar *qname, *prefix;
 xmlXPathContextPtr xpctxt = ctxt->context;
 xmlNodePtr tmpNode = ((void*)0);
 xsltDocumentPtr oldDocInfo;

 tctxt = xsltXPathGetTransformContext(ctxt);

 oldDocInfo = tctxt->document;

 if (xpctxt->node == ((void*)0)) {
     xsltTransformError(tctxt, ((void*)0), tctxt->inst,
  "Internal error in xsltKeyFunction(): "
  "The context node is not set on the XPath context.\n");
     tctxt->state = XSLT_STATE_STOPPED;
     goto error;
 }



 qname = obj1->stringval;
 key = xmlSplitQName2(qname, &prefix);
 if (key == ((void*)0)) {
     key = xmlStrdup(obj1->stringval);
     keyURI = ((void*)0);
     if (prefix != ((void*)0))
  xmlFree(prefix);
 } else {
     if (prefix != ((void*)0)) {
  keyURI = xmlXPathNsLookup(xpctxt, prefix);
  if (keyURI == ((void*)0)) {
      xsltTransformError(tctxt, ((void*)0), tctxt->inst,
   "key() : prefix %s is not bound\n", prefix);



  }
  xmlFree(prefix);
     } else {
  keyURI = ((void*)0);
     }
 }




 valuePush(ctxt, obj2);
 xmlXPathStringFunction(ctxt, 1);
 if ((ctxt->value == ((void*)0)) || (ctxt->value->type != XPATH_STRING)) {
     xsltTransformError(tctxt, ((void*)0), tctxt->inst,
  "key() : invalid arg expecting a string\n");
     ctxt->error = XPATH_INVALID_TYPE;
     goto error;
 }
 obj2 = valuePop(ctxt);
 value = obj2->stringval;
 if (xpctxt->node->type == XML_NAMESPACE_DECL) {





     if ((((xmlNsPtr) xpctxt->node)->next != ((void*)0)) &&
  (((xmlNsPtr) xpctxt->node)->next->type == XML_ELEMENT_NODE))
     {
  tmpNode = (xmlNodePtr) ((xmlNsPtr) xpctxt->node)->next;
     }
 } else
     tmpNode = xpctxt->node;

 if ((tmpNode == ((void*)0)) || (tmpNode->doc == ((void*)0))) {
     xsltTransformError(tctxt, ((void*)0), tctxt->inst,
  "Internal error in xsltKeyFunction(): "
  "Couldn't get the doc of the XPath context node.\n");
     goto error;
 }

 if ((tctxt->document == ((void*)0)) ||
     (tctxt->document->doc != tmpNode->doc))
 {
     if (tmpNode->doc->name && (tmpNode->doc->name[0] == ' ')) {



  if (tmpNode->doc->_private == ((void*)0)) {
      tmpNode->doc->_private = xsltNewDocument(tctxt, tmpNode->doc);
      if (tmpNode->doc->_private == ((void*)0))
   goto error;
  }
  tctxt->document = (xsltDocumentPtr) tmpNode->doc->_private;
     } else {




  tctxt->document = xsltFindDocument(tctxt, tmpNode->doc);
     }
     if (tctxt->document == ((void*)0)) {
  xsltTransformError(tctxt, ((void*)0), tctxt->inst,
      "Internal error in xsltKeyFunction(): "
      "Could not get the document info of a context doc.\n");
  tctxt->state = XSLT_STATE_STOPPED;
  goto error;
     }
 }



 nodelist = xsltGetKey(tctxt, key, keyURI, value);

error:
 tctxt->document = oldDocInfo;
 valuePush(ctxt, xmlXPathWrapNodeSet(
     xmlXPathNodeSetMerge(((void*)0), nodelist)));
 if (key != ((void*)0))
     xmlFree(key);
    }

    if (obj1 != ((void*)0))
 xmlXPathFreeObject(obj1);
    if (obj2 != ((void*)0))
 xmlXPathFreeObject(obj2);
}
