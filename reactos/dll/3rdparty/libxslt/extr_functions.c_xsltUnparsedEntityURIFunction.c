
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* xmlXPathParserContextPtr ;
typedef TYPE_3__* xmlXPathObjectPtr ;
typedef TYPE_4__* xmlEntityPtr ;
typedef int xmlChar ;
struct TYPE_16__ {int const* URI; } ;
struct TYPE_15__ {scalar_t__ type; int * stringval; } ;
struct TYPE_14__ {TYPE_1__* context; int error; int * value; } ;
struct TYPE_13__ {int doc; } ;


 int XPATH_INVALID_ARITY ;
 scalar_t__ XPATH_STRING ;
 TYPE_3__* valuePop (TYPE_2__*) ;
 int valuePush (TYPE_2__*,int ) ;
 TYPE_4__* xmlGetDocEntity (int ,int *) ;
 TYPE_3__* xmlXPathConvertString (TYPE_3__*) ;
 int xmlXPathFreeObject (TYPE_3__*) ;
 int xmlXPathNewString (int const*) ;
 int xsltGenericError (int ,char*) ;
 int xsltGenericErrorContext ;

void
xsltUnparsedEntityURIFunction(xmlXPathParserContextPtr ctxt, int nargs){
    xmlXPathObjectPtr obj;
    xmlChar *str;

    if ((nargs != 1) || (ctxt->value == ((void*)0))) {
        xsltGenericError(xsltGenericErrorContext,
  "unparsed-entity-uri() : expects one string arg\n");
 ctxt->error = XPATH_INVALID_ARITY;
 return;
    }
    obj = valuePop(ctxt);
    if (obj->type != XPATH_STRING) {
 obj = xmlXPathConvertString(obj);
    }

    str = obj->stringval;
    if (str == ((void*)0)) {
 valuePush(ctxt, xmlXPathNewString((const xmlChar *)""));
    } else {
 xmlEntityPtr entity;

 entity = xmlGetDocEntity(ctxt->context->doc, str);
 if (entity == ((void*)0)) {
     valuePush(ctxt, xmlXPathNewString((const xmlChar *)""));
 } else {
     if (entity->URI != ((void*)0))
  valuePush(ctxt, xmlXPathNewString(entity->URI));
     else
  valuePush(ctxt, xmlXPathNewString((const xmlChar *)""));
 }
    }
    xmlXPathFreeObject(obj);
}
