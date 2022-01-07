
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltParserContextPtr ;
typedef scalar_t__ xsltAxis ;
typedef int xmlChar ;
struct TYPE_4__ {int error; } ;


 scalar_t__ AXIS_ATTRIBUTE ;
 char CUR ;
 int NEXT ;
 int PUSH (int ,int *,int *,int) ;
 int SKIP_BLANKS ;
 int XSLT_OP_ATTR ;
 int XSLT_OP_COMMENT ;
 int XSLT_OP_ID ;
 int XSLT_OP_KEY ;
 int XSLT_OP_NODE ;
 int XSLT_OP_PI ;
 int XSLT_OP_TEXT ;
 int xmlFree (int *) ;
 scalar_t__ xmlStrEqual (int *,int const*) ;
 int * xsltScanLiteral (TYPE_1__*) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static void
xsltCompileIdKeyPattern(xsltParserContextPtr ctxt, xmlChar *name,
  int aid, int novar, xsltAxis axis) {
    xmlChar *lit = ((void*)0);
    xmlChar *lit2 = ((void*)0);

    if (CUR != '(') {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltCompileIdKeyPattern : ( expected\n");
 ctxt->error = 1;
 return;
    }
    if ((aid) && (xmlStrEqual(name, (const xmlChar *)"id"))) {
 if (axis != 0) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : NodeTest expected\n");
     ctxt->error = 1;
     return;
 }
 NEXT;
 SKIP_BLANKS;
        lit = xsltScanLiteral(ctxt);
 if (ctxt->error) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : Literal expected\n");
     return;
 }
 SKIP_BLANKS;
 if (CUR != ')') {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : ) expected\n");
     xmlFree(lit);
     ctxt->error = 1;
     return;
 }
 NEXT;
 PUSH(XSLT_OP_ID, lit, ((void*)0), novar);
 lit = ((void*)0);
    } else if ((aid) && (xmlStrEqual(name, (const xmlChar *)"key"))) {
 if (axis != 0) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : NodeTest expected\n");
     ctxt->error = 1;
     return;
 }
 NEXT;
 SKIP_BLANKS;
        lit = xsltScanLiteral(ctxt);
 if (ctxt->error) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : Literal expected\n");
     return;
 }
 SKIP_BLANKS;
 if (CUR != ',') {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : , expected\n");
     xmlFree(lit);
     ctxt->error = 1;
     return;
 }
 NEXT;
 SKIP_BLANKS;
        lit2 = xsltScanLiteral(ctxt);
 if (ctxt->error) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : Literal expected\n");
     xmlFree(lit);
     return;
 }
 SKIP_BLANKS;
 if (CUR != ')') {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : ) expected\n");
     xmlFree(lit);
     xmlFree(lit2);
     ctxt->error = 1;
     return;
 }
 NEXT;

 PUSH(XSLT_OP_KEY, lit, lit2, novar);
 lit = ((void*)0);
 lit2 = ((void*)0);
    } else if (xmlStrEqual(name, (const xmlChar *)"processing-instruction")) {
 NEXT;
 SKIP_BLANKS;
 if (CUR != ')') {
     lit = xsltScanLiteral(ctxt);
     if (ctxt->error) {
  xsltTransformError(((void*)0), ((void*)0), ((void*)0),
   "xsltCompileIdKeyPattern : Literal expected\n");
  return;
     }
     SKIP_BLANKS;
     if (CUR != ')') {
  xsltTransformError(((void*)0), ((void*)0), ((void*)0),
   "xsltCompileIdKeyPattern : ) expected\n");
  ctxt->error = 1;
                xmlFree(lit);
  return;
     }
 }
 NEXT;
 PUSH(XSLT_OP_PI, lit, ((void*)0), novar);
 lit = ((void*)0);
    } else if (xmlStrEqual(name, (const xmlChar *)"text")) {
 NEXT;
 SKIP_BLANKS;
 if (CUR != ')') {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : ) expected\n");
     ctxt->error = 1;
     return;
 }
 NEXT;
 PUSH(XSLT_OP_TEXT, ((void*)0), ((void*)0), novar);
    } else if (xmlStrEqual(name, (const xmlChar *)"comment")) {
 NEXT;
 SKIP_BLANKS;
 if (CUR != ')') {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : ) expected\n");
     ctxt->error = 1;
     return;
 }
 NEXT;
 PUSH(XSLT_OP_COMMENT, ((void*)0), ((void*)0), novar);
    } else if (xmlStrEqual(name, (const xmlChar *)"node")) {
 NEXT;
 SKIP_BLANKS;
 if (CUR != ')') {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileIdKeyPattern : ) expected\n");
     ctxt->error = 1;
     return;
 }
 NEXT;
 if (axis == AXIS_ATTRIBUTE) {
     PUSH(XSLT_OP_ATTR, ((void*)0), ((void*)0), novar);
 }
 else {
     PUSH(XSLT_OP_NODE, ((void*)0), ((void*)0), novar);
 }
    } else if (aid) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
     "xsltCompileIdKeyPattern : expecting 'key' or 'id' or node type\n");
 ctxt->error = 1;
 return;
    } else {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
     "xsltCompileIdKeyPattern : node type\n");
 ctxt->error = 1;
 return;
    }
error:
    return;
}
