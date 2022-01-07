
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_3__* xmlXPathParserContextPtr ;
typedef TYPE_4__* xmlXPathObjectPtr ;
typedef TYPE_5__* xmlNodeSetPtr ;
typedef int * xmlNodePtr ;
typedef int xmlChar ;
typedef int str ;
struct TYPE_16__ {int nodeNr; int ** nodeTab; } ;
struct TYPE_15__ {TYPE_5__* nodesetval; } ;
struct TYPE_14__ {int error; TYPE_2__* value; TYPE_1__* context; } ;
struct TYPE_13__ {scalar_t__ type; } ;
struct TYPE_12__ {int * node; } ;


 int XPATH_INVALID_ARITY ;
 int XPATH_INVALID_TYPE ;
 scalar_t__ XPATH_NODESET ;
 int snprintf (char*,int,char*,long) ;
 TYPE_4__* valuePop (TYPE_3__*) ;
 int valuePush (TYPE_3__*,int ) ;
 int xmlXPathCmpNodes (int *,int *) ;
 int xmlXPathFreeObject (TYPE_4__*) ;
 int xmlXPathNewCString (char*) ;
 int xmlXPathNewString (int *) ;
 int xsltTransformError (int ,int *,int *,char*,...) ;
 int xsltXPathGetTransformContext (TYPE_3__*) ;

void
xsltGenerateIdFunction(xmlXPathParserContextPtr ctxt, int nargs){
    static char base_address;
    xmlNodePtr cur = ((void*)0);
    xmlXPathObjectPtr obj = ((void*)0);
    long val;
    xmlChar str[30];

    if (nargs == 0) {
 cur = ctxt->context->node;
    } else if (nargs == 1) {
 xmlNodeSetPtr nodelist;
 int i, ret;

 if ((ctxt->value == ((void*)0)) || (ctxt->value->type != XPATH_NODESET)) {
     ctxt->error = XPATH_INVALID_TYPE;
     xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "generate-id() : invalid arg expecting a node-set\n");
     return;
 }
 obj = valuePop(ctxt);
 nodelist = obj->nodesetval;
 if ((nodelist == ((void*)0)) || (nodelist->nodeNr <= 0)) {
     xmlXPathFreeObject(obj);
     valuePush(ctxt, xmlXPathNewCString(""));
     return;
 }
 cur = nodelist->nodeTab[0];
 for (i = 1;i < nodelist->nodeNr;i++) {
     ret = xmlXPathCmpNodes(cur, nodelist->nodeTab[i]);
     if (ret == -1)
         cur = nodelist->nodeTab[i];
 }
    } else {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "generate-id() : invalid number of args %d\n", nargs);
 ctxt->error = XPATH_INVALID_ARITY;
 return;
    }

    if (obj)
        xmlXPathFreeObject(obj);

    val = (long)((char *)cur - (char *)&base_address);
    if (val >= 0) {
      snprintf((char *)str, sizeof(str), "idp%ld", val);
    } else {
      snprintf((char *)str, sizeof(str), "idm%ld", -val);
    }
    valuePush(ctxt, xmlXPathNewString(str));
}
