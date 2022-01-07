
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef TYPE_3__* xsltStackElemPtr ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_10__ {scalar_t__ name; scalar_t__ nameURI; int computed; int value; struct TYPE_10__* next; TYPE_2__* comp; int tree; void* select; } ;
struct TYPE_9__ {scalar_t__ type; int inst; } ;
struct TYPE_8__ {int errors; TYPE_3__* variables; int dict; } ;


 scalar_t__ XSLT_FUNC_PARAM ;
 scalar_t__ XSLT_FUNC_VARIABLE ;
 void* xmlDictLookup (int ,int const*,int) ;
 scalar_t__ xmlStrEqual (scalar_t__,scalar_t__) ;
 int xmlXPathNewString (int const*) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 TYPE_3__* xsltNewStackElem (int *) ;
 int xsltTransformError (int *,TYPE_1__*,int ,char*,scalar_t__) ;

__attribute__((used)) static int
xsltRegisterGlobalVariable(xsltStylesheetPtr style, const xmlChar *name,
       const xmlChar *ns_uri, const xmlChar *sel,
       xmlNodePtr tree, xsltStylePreCompPtr comp,
       const xmlChar *value) {
    xsltStackElemPtr elem, tmp;
    if (style == ((void*)0))
 return(-1);
    if (name == ((void*)0))
 return(-1);
    if (comp == ((void*)0))
 return(-1);
    elem = xsltNewStackElem(((void*)0));
    if (elem == ((void*)0))
 return(-1);
    elem->comp = comp;
    elem->name = xmlDictLookup(style->dict, name, -1);
    elem->select = xmlDictLookup(style->dict, sel, -1);
    if (ns_uri)
 elem->nameURI = xmlDictLookup(style->dict, ns_uri, -1);
    elem->tree = tree;
    tmp = style->variables;
    if (tmp == ((void*)0)) {
 elem->next = ((void*)0);
 style->variables = elem;
    } else {
 while (tmp != ((void*)0)) {
     if ((elem->comp->type == XSLT_FUNC_VARIABLE) &&
  (tmp->comp->type == XSLT_FUNC_VARIABLE) &&
  (xmlStrEqual(elem->name, tmp->name)) &&
  ((elem->nameURI == tmp->nameURI) ||
   (xmlStrEqual(elem->nameURI, tmp->nameURI))))
     {
  xsltTransformError(((void*)0), style, comp->inst,
  "redefinition of global variable %s\n", elem->name);
  style->errors++;
     }
     if (tmp->next == ((void*)0))
         break;
     tmp = tmp->next;
 }
 elem->next = ((void*)0);
 tmp->next = elem;
    }
    if (value != ((void*)0)) {
 elem->computed = 1;
 elem->value = xmlXPathNewString(value);
    }
    return(0);
}
