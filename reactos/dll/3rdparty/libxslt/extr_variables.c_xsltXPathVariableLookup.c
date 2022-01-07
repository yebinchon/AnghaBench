
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStackElemPtr ;
typedef int * xmlXPathObjectPtr ;
typedef int xmlChar ;
struct TYPE_9__ {int computed; int * value; int const* nameURI; int const* name; struct TYPE_9__* next; } ;
struct TYPE_8__ {scalar_t__ varsNr; int varsBase; int inst; scalar_t__ globalVars; TYPE_2__** varsTab; int dict; } ;


 int XSLT_TRACE (TYPE_1__*,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int stack_addr ;
 int stack_cmp ;
 int * xmlDictLookup (int ,int const*,int) ;
 int * xmlXPathObjectCopy (int *) ;
 int * xsltEvalVariable (TYPE_1__*,TYPE_2__*,int *) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 int * xsltGlobalVariableLookup (TYPE_1__*,int const*,int const*) ;
 int xsltTransformError (TYPE_1__*,int *,int ,char*,int const*,...) ;

xmlXPathObjectPtr
xsltXPathVariableLookup(void *ctxt, const xmlChar *name,
                 const xmlChar *ns_uri) {
    xsltTransformContextPtr tctxt;
    xmlXPathObjectPtr valueObj = ((void*)0);

    if ((ctxt == ((void*)0)) || (name == ((void*)0)))
 return(((void*)0));






    tctxt = (xsltTransformContextPtr) ctxt;
    if (tctxt->varsNr != 0) {
 int i;
 xsltStackElemPtr variable = ((void*)0), cur;

 for (i = tctxt->varsNr; i > tctxt->varsBase; i--) {
     cur = tctxt->varsTab[i-1];
     if ((cur->name == name) && (cur->nameURI == ns_uri)) {



  variable = cur;
  goto local_variable_found;
     }
     cur = cur->next;
 }






 {
     const xmlChar *tmpName = name, *tmpNsName = ns_uri;

     name = xmlDictLookup(tctxt->dict, name, -1);
     if (ns_uri)
  ns_uri = xmlDictLookup(tctxt->dict, ns_uri, -1);
     if ((tmpName != name) || (tmpNsName != ns_uri)) {
  for (i = tctxt->varsNr; i > tctxt->varsBase; i--) {
      cur = tctxt->varsTab[i-1];
      if ((cur->name == name) && (cur->nameURI == ns_uri)) {



   variable = cur;
   goto local_variable_found;
      }
  }
     }
 }

local_variable_found:

 if (variable) {
     if (variable->computed == 0) {





  variable->value = xsltEvalVariable(tctxt, variable, ((void*)0));
  variable->computed = 1;
     }
     if (variable->value != ((void*)0)) {
  valueObj = xmlXPathObjectCopy(variable->value);
     }
     return(valueObj);
 }
    }



    if (tctxt->globalVars) {
 valueObj = xsltGlobalVariableLookup(tctxt, name, ns_uri);
    }

    if (valueObj == ((void*)0)) {






 if (ns_uri) {
     xsltTransformError(tctxt, ((void*)0), tctxt->inst,
  "Variable '{%s}%s' has not been declared.\n", ns_uri, name);
 } else {
     xsltTransformError(tctxt, ((void*)0), tctxt->inst,
  "Variable '%s' has not been declared.\n", name);
 }
    } else {





    }

    return(valueObj);
}
