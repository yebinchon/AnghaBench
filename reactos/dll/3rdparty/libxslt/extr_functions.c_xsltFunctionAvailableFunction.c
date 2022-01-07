
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* xmlXPathParserContextPtr ;
typedef TYPE_3__* xmlXPathObjectPtr ;
typedef int xmlChar ;
struct TYPE_13__ {int stringval; } ;
struct TYPE_12__ {int context; int error; TYPE_1__* value; } ;
struct TYPE_11__ {scalar_t__ type; } ;


 int XPATH_INVALID_ARITY ;
 int XPATH_INVALID_TYPE ;
 scalar_t__ XPATH_STRING ;
 TYPE_3__* valuePop (TYPE_2__*) ;
 int valuePush (TYPE_2__*,int ) ;
 int xmlFree (int *) ;
 int * xmlSplitQName2 (int ,int **) ;
 int * xmlStrdup (int ) ;
 int xmlXPathFreeObject (TYPE_3__*) ;
 int * xmlXPathFunctionLookupNS (int ,int *,int const*) ;
 int xmlXPathNewBoolean (int) ;
 int * xmlXPathNsLookup (int ,int *) ;
 int xmlXPathStringFunction (TYPE_2__*,int) ;
 int xsltTransformError (int ,int *,int *,char*,...) ;
 int xsltXPathGetTransformContext (TYPE_2__*) ;

void
xsltFunctionAvailableFunction(xmlXPathParserContextPtr ctxt, int nargs){
    xmlXPathObjectPtr obj;
    xmlChar *prefix, *name;
    const xmlChar *nsURI = ((void*)0);

    if (nargs != 1) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "function-available() : expects one string arg\n");
 ctxt->error = XPATH_INVALID_ARITY;
 return;
    }
    xmlXPathStringFunction(ctxt, 1);
    if ((ctxt->value == ((void*)0)) || (ctxt->value->type != XPATH_STRING)) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
     "function-available() : invalid arg expecting a string\n");
 ctxt->error = XPATH_INVALID_TYPE;
 return;
    }
    obj = valuePop(ctxt);

    name = xmlSplitQName2(obj->stringval, &prefix);
    if (name == ((void*)0)) {
 name = xmlStrdup(obj->stringval);
    } else {
 nsURI = xmlXPathNsLookup(ctxt->context, prefix);
 if (nsURI == ((void*)0)) {
     xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "function-available() : prefix %s is not bound\n", prefix);
 }
    }

    if (xmlXPathFunctionLookupNS(ctxt->context, name, nsURI) != ((void*)0)) {
 valuePush(ctxt, xmlXPathNewBoolean(1));
    } else {
 valuePush(ctxt, xmlXPathNewBoolean(0));
    }

    xmlXPathFreeObject(obj);
    if (name != ((void*)0))
 xmlFree(name);
    if (prefix != ((void*)0))
 xmlFree(prefix);
}
