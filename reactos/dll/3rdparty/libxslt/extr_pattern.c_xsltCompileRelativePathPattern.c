
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltParserContextPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int error; } ;


 char CUR ;
 int NEXT ;
 char NXT (int) ;
 int PUSH (int ,int *,int *,int) ;
 int SKIP_BLANKS ;
 int XSLT_OP_ANCESTOR ;
 int XSLT_OP_PARENT ;
 int xsltCompileStepPattern (TYPE_1__*,int *,int) ;

__attribute__((used)) static void
xsltCompileRelativePathPattern(xsltParserContextPtr ctxt, xmlChar *token, int novar) {
    xsltCompileStepPattern(ctxt, token, novar);
    if (ctxt->error)
 goto error;
    SKIP_BLANKS;
    while ((CUR != 0) && (CUR != '|')) {
 if ((CUR == '/') && (NXT(1) == '/')) {
     PUSH(XSLT_OP_ANCESTOR, ((void*)0), ((void*)0), novar);
     NEXT;
     NEXT;
     SKIP_BLANKS;
     xsltCompileStepPattern(ctxt, ((void*)0), novar);
 } else if (CUR == '/') {
     PUSH(XSLT_OP_PARENT, ((void*)0), ((void*)0), novar);
     NEXT;
     SKIP_BLANKS;
     if ((CUR != 0) && (CUR != '|')) {
  xsltCompileRelativePathPattern(ctxt, ((void*)0), novar);
     }
 } else {
     ctxt->error = 1;
 }
 if (ctxt->error)
     goto error;
 SKIP_BLANKS;
    }
error:
    return;
}
