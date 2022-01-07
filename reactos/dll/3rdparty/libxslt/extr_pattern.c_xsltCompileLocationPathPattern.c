
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xsltParserContextPtr ;
typedef int xmlChar ;
struct TYPE_8__ {int error; TYPE_1__* comp; } ;
struct TYPE_7__ {double priority; } ;


 char CUR ;
 int NEXT ;
 char NXT (int) ;
 int PUSH (int ,int *,int *,int) ;
 int SKIP_BLANKS ;
 int XSLT_OP_ANCESTOR ;
 int XSLT_OP_PARENT ;
 int XSLT_OP_ROOT ;
 int xmlFree (int *) ;
 int xmlXPathIsNodeType (int *) ;
 int xsltCompileIdKeyPattern (TYPE_2__*,int *,int,int,int ) ;
 int xsltCompileRelativePathPattern (TYPE_2__*,int *,int) ;
 int * xsltScanNCName (TYPE_2__*) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static void
xsltCompileLocationPathPattern(xsltParserContextPtr ctxt, int novar) {
    SKIP_BLANKS;
    if ((CUR == '/') && (NXT(1) == '/')) {




 NEXT;
 NEXT;
 ctxt->comp->priority = 0.5;
 xsltCompileRelativePathPattern(ctxt, ((void*)0), novar);
    } else if (CUR == '/') {



 NEXT;
 SKIP_BLANKS;
 PUSH(XSLT_OP_ROOT, ((void*)0), ((void*)0), novar);
 if ((CUR != 0) && (CUR != '|')) {
     PUSH(XSLT_OP_PARENT, ((void*)0), ((void*)0), novar);
     xsltCompileRelativePathPattern(ctxt, ((void*)0), novar);
 }
    } else if (CUR == '*') {
 xsltCompileRelativePathPattern(ctxt, ((void*)0), novar);
    } else if (CUR == '@') {
 xsltCompileRelativePathPattern(ctxt, ((void*)0), novar);
    } else {
 xmlChar *name;
 name = xsltScanNCName(ctxt);
 if (name == ((void*)0)) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
      "xsltCompileLocationPathPattern : Name expected\n");
     ctxt->error = 1;
     return;
 }
 SKIP_BLANKS;
 if ((CUR == '(') && !xmlXPathIsNodeType(name)) {
     xsltCompileIdKeyPattern(ctxt, name, 1, novar, 0);
     xmlFree(name);
     name = ((void*)0);
     if ((CUR == '/') && (NXT(1) == '/')) {
  PUSH(XSLT_OP_ANCESTOR, ((void*)0), ((void*)0), novar);
  NEXT;
  NEXT;
  SKIP_BLANKS;
  xsltCompileRelativePathPattern(ctxt, ((void*)0), novar);
     } else if (CUR == '/') {
  PUSH(XSLT_OP_PARENT, ((void*)0), ((void*)0), novar);
  NEXT;
  SKIP_BLANKS;
  xsltCompileRelativePathPattern(ctxt, ((void*)0), novar);
     }
     return;
 }
 xsltCompileRelativePathPattern(ctxt, name, novar);
    }
error:
    return;
}
