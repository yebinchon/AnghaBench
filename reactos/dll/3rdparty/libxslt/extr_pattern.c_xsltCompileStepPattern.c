
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltParserContextPtr ;
typedef scalar_t__ xsltAxis ;
typedef TYPE_2__* xmlNsPtr ;
typedef int xmlChar ;
struct TYPE_8__ {int const* href; } ;
struct TYPE_7__ {int error; int elem; int doc; } ;


 scalar_t__ AXIS_ATTRIBUTE ;
 scalar_t__ AXIS_CHILD ;
 char CUR ;
 int const* CUR_PTR ;
 int NEXT ;
 int PUSH (int ,int *,int *,int) ;
 int SKIP_BLANKS ;
 int SWAP () ;
 int XSLT_OP_ALL ;
 int XSLT_OP_ATTR ;
 int XSLT_OP_ELEM ;
 int XSLT_OP_NS ;
 int XSLT_OP_PREDICATE ;
 int xmlFree (int *) ;
 TYPE_2__* xmlSearchNs (int ,int ,int *) ;
 scalar_t__ xmlStrEqual (int *,int const*) ;
 int * xmlStrdup (int const*) ;
 int * xmlStrndup (int const*,int) ;
 int xsltCompileIdKeyPattern (TYPE_1__*,int *,int ,int,scalar_t__) ;
 int * xsltGetQNameURI (int ,int **) ;
 int * xsltScanNCName (TYPE_1__*) ;
 int xsltTransformError (int *,int *,int *,char*,...) ;

__attribute__((used)) static void
xsltCompileStepPattern(xsltParserContextPtr ctxt, xmlChar *token, int novar) {
    xmlChar *name = ((void*)0);
    const xmlChar *URI = ((void*)0);
    xmlChar *URL = ((void*)0);
    int level;
    xsltAxis axis = 0;

    SKIP_BLANKS;
    if ((token == ((void*)0)) && (CUR == '@')) {
 NEXT;
        axis = AXIS_ATTRIBUTE;
    }
parse_node_test:
    if (token == ((void*)0))
 token = xsltScanNCName(ctxt);
    if (token == ((void*)0)) {
 if (CUR == '*') {
     NEXT;
     if (axis == AXIS_ATTRIBUTE) {
                PUSH(XSLT_OP_ATTR, ((void*)0), ((void*)0), novar);
            }
            else {
                PUSH(XSLT_OP_ALL, ((void*)0), ((void*)0), novar);
            }
     goto parse_predicate;
 } else {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileStepPattern : Name expected\n");
     ctxt->error = 1;
     goto error;
 }
    }


    SKIP_BLANKS;
    if (CUR == '(') {
 xsltCompileIdKeyPattern(ctxt, token, 0, novar, axis);
 xmlFree(token);
 token = ((void*)0);
 if (ctxt->error)
     goto error;
    } else if (CUR == ':') {
 NEXT;
 if (CUR != ':') {
     xmlChar *prefix = token;
     xmlNsPtr ns;




     token = xsltScanNCName(ctxt);
     ns = xmlSearchNs(ctxt->doc, ctxt->elem, prefix);
     if (ns == ((void*)0)) {
  xsltTransformError(((void*)0), ((void*)0), ((void*)0),
     "xsltCompileStepPattern : no namespace bound to prefix %s\n",
     prefix);
  xmlFree(prefix);
  prefix=((void*)0);
  ctxt->error = 1;
  goto error;
     } else {
  URL = xmlStrdup(ns->href);
     }
     xmlFree(prefix);
     prefix=((void*)0);
     if (token == ((void*)0)) {
  if (CUR == '*') {
      NEXT;
                    if (axis == AXIS_ATTRIBUTE) {
                        PUSH(XSLT_OP_ATTR, ((void*)0), URL, novar);
   URL = ((void*)0);
                    }
                    else {
                        PUSH(XSLT_OP_NS, URL, ((void*)0), novar);
   URL = ((void*)0);
                    }
  } else {
      xsltTransformError(((void*)0), ((void*)0), ((void*)0),
       "xsltCompileStepPattern : Name expected\n");
      ctxt->error = 1;
                    xmlFree(URL);
      goto error;
  }
     } else {
                if (axis == AXIS_ATTRIBUTE) {
                    PUSH(XSLT_OP_ATTR, token, URL, novar);
      token = ((void*)0);
      URL = ((void*)0);
                }
                else {
                    PUSH(XSLT_OP_ELEM, token, URL, novar);
      token = ((void*)0);
      URL = ((void*)0);
                }
     }
 } else {
     if (axis != 0) {
  xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileStepPattern : NodeTest expected\n");
  ctxt->error = 1;
  goto error;
     }
     NEXT;
     if (xmlStrEqual(token, (const xmlChar *) "child")) {
         axis = AXIS_CHILD;
     } else if (xmlStrEqual(token, (const xmlChar *) "attribute")) {
         axis = AXIS_ATTRIBUTE;
     } else {
  xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileStepPattern : 'child' or 'attribute' expected\n");
  ctxt->error = 1;
  goto error;
     }
     xmlFree(token);
     token = ((void*)0);
            SKIP_BLANKS;
            token = xsltScanNCName(ctxt);
     goto parse_node_test;
 }
    } else {
 URI = xsltGetQNameURI(ctxt->elem, &token);
 if (token == ((void*)0)) {
     ctxt->error = 1;
     goto error;
 }
 if (URI != ((void*)0))
     URL = xmlStrdup(URI);
        if (axis == AXIS_ATTRIBUTE) {
            PUSH(XSLT_OP_ATTR, token, URL, novar);
     token = ((void*)0);
     URL = ((void*)0);
        }
        else {
            PUSH(XSLT_OP_ELEM, token, URL, novar);
     token = ((void*)0);
     URL = ((void*)0);
        }
    }
parse_predicate:
    SKIP_BLANKS;
    level = 0;
    while (CUR == '[') {
 const xmlChar *q;
 xmlChar *ret = ((void*)0);

 level++;
 NEXT;
 q = CUR_PTR;
 while (CUR != 0) {

     if (CUR == '[')
  level++;
     else if (CUR == ']') {
  level--;
  if (level == 0)
      break;
     } else if (CUR == '"') {
  NEXT;
  while ((CUR != 0) && (CUR != '"'))
      NEXT;
     } else if (CUR == '\'') {
  NEXT;
  while ((CUR != 0) && (CUR != '\''))
      NEXT;
     }
     NEXT;
 }
 if (CUR == 0) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileStepPattern : ']' expected\n");
     ctxt->error = 1;
     return;
        }
 ret = xmlStrndup(q, CUR_PTR - q);
 PUSH(XSLT_OP_PREDICATE, ret, ((void*)0), novar);
 ret = ((void*)0);

 SWAP();
 NEXT;
 SKIP_BLANKS;
    }
    return;
error:
    if (token != ((void*)0))
 xmlFree(token);
    if (name != ((void*)0))
 xmlFree(name);
}
