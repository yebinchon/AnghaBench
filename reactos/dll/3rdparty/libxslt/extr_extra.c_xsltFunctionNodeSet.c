
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* xmlXPathParserContextPtr ;
struct TYPE_6__ {TYPE_1__* value; int error; } ;
struct TYPE_5__ {scalar_t__ type; } ;


 int XPATH_INVALID_ARITY ;
 int XPATH_INVALID_TYPE ;
 scalar_t__ XPATH_NODESET ;
 scalar_t__ XPATH_XSLT_TREE ;
 int xsltTransformError (int ,int *,int *,char*) ;
 int xsltXPathGetTransformContext (TYPE_2__*) ;

void
xsltFunctionNodeSet(xmlXPathParserContextPtr ctxt, int nargs){
    if (nargs != 1) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "node-set() : expects one result-tree arg\n");
 ctxt->error = XPATH_INVALID_ARITY;
 return;
    }
    if ((ctxt->value == ((void*)0)) ||
 ((ctxt->value->type != XPATH_XSLT_TREE) &&
  (ctxt->value->type != XPATH_NODESET))) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
     "node-set() invalid arg expecting a result tree\n");
 ctxt->error = XPATH_INVALID_TYPE;
 return;
    }
    if (ctxt->value->type == XPATH_XSLT_TREE) {
 ctxt->value->type = XPATH_NODESET;
    }
}
