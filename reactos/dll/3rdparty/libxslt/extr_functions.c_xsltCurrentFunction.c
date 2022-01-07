
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xmlXPathParserContextPtr ;
struct TYPE_9__ {int error; } ;
struct TYPE_8__ {int * node; } ;


 int XPATH_INVALID_ARITY ;
 int valuePush (TYPE_2__*,int ) ;
 int xmlXPathNewNodeSet (int *) ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*) ;
 TYPE_1__* xsltXPathGetTransformContext (TYPE_2__*) ;

__attribute__((used)) static void
xsltCurrentFunction(xmlXPathParserContextPtr ctxt, int nargs){
    xsltTransformContextPtr tctxt;

    if (nargs != 0) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "current() : function uses no argument\n");
 ctxt->error = XPATH_INVALID_ARITY;
 return;
    }
    tctxt = xsltXPathGetTransformContext(ctxt);
    if (tctxt == ((void*)0)) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "current() : internal error tctxt == NULL\n");
 valuePush(ctxt, xmlXPathNewNodeSet(((void*)0)));
    } else {
 valuePush(ctxt, xmlXPathNewNodeSet(tctxt->node));
    }
}
