
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xmlXPathParserContextPtr ;
typedef TYPE_4__* xmlXPathObjectPtr ;
typedef TYPE_5__* xmlNsPtr ;
typedef int xmlChar ;
struct TYPE_23__ {int * href; } ;
struct TYPE_22__ {int stringval; } ;
struct TYPE_21__ {int context; int error; TYPE_1__* value; } ;
struct TYPE_20__ {TYPE_14__* inst; } ;
struct TYPE_19__ {scalar_t__ type; } ;
struct TYPE_18__ {int doc; } ;


 int XPATH_INVALID_ARITY ;
 int XPATH_INVALID_TYPE ;
 scalar_t__ XPATH_STRING ;
 TYPE_4__* valuePop (TYPE_3__*) ;
 int valuePush (TYPE_3__*,int ) ;
 int xmlFree (int *) ;
 TYPE_5__* xmlSearchNs (int ,TYPE_14__*,int *) ;
 int * xmlSplitQName2 (int ,int **) ;
 int * xmlStrdup (int ) ;
 int xmlXPathFreeObject (TYPE_4__*) ;
 int xmlXPathNewBoolean (int) ;
 int * xmlXPathNsLookup (int ,int *) ;
 int xmlXPathStringFunction (TYPE_3__*,int) ;
 int * xsltExtElementLookup (TYPE_2__*,int *,int const*) ;
 int xsltTransformError (TYPE_2__*,int *,int *,char*,...) ;
 TYPE_2__* xsltXPathGetTransformContext (TYPE_3__*) ;

void
xsltElementAvailableFunction(xmlXPathParserContextPtr ctxt, int nargs){
    xmlXPathObjectPtr obj;
    xmlChar *prefix, *name;
    const xmlChar *nsURI = ((void*)0);
    xsltTransformContextPtr tctxt;

    if (nargs != 1) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "element-available() : expects one string arg\n");
 ctxt->error = XPATH_INVALID_ARITY;
 return;
    }
    xmlXPathStringFunction(ctxt, 1);
    if ((ctxt->value == ((void*)0)) || (ctxt->value->type != XPATH_STRING)) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
     "element-available() : invalid arg expecting a string\n");
 ctxt->error = XPATH_INVALID_TYPE;
 return;
    }
    obj = valuePop(ctxt);
    tctxt = xsltXPathGetTransformContext(ctxt);
    if ((tctxt == ((void*)0)) || (tctxt->inst == ((void*)0))) {
 xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "element-available() : internal error tctxt == NULL\n");
 xmlXPathFreeObject(obj);
 valuePush(ctxt, xmlXPathNewBoolean(0));
 return;
    }


    name = xmlSplitQName2(obj->stringval, &prefix);
    if (name == ((void*)0)) {
 xmlNsPtr ns;

 name = xmlStrdup(obj->stringval);
 ns = xmlSearchNs(tctxt->inst->doc, tctxt->inst, ((void*)0));
 if (ns != ((void*)0)) nsURI = ns->href;
    } else {
 nsURI = xmlXPathNsLookup(ctxt->context, prefix);
 if (nsURI == ((void*)0)) {
     xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
  "element-available() : prefix %s is not bound\n", prefix);
 }
    }

    if (xsltExtElementLookup(tctxt, name, nsURI) != ((void*)0)) {
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
