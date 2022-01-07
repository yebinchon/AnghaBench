
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xsltStylesheetPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_10__ {scalar_t__ type; int const* name; struct TYPE_10__* parent; TYPE_1__* ns; } ;
struct TYPE_9__ {int errors; int * extInfos; scalar_t__ literal_result; } ;
struct TYPE_8__ {int const* href; } ;


 scalar_t__ XML_DOCUMENT_NODE ;
 int * xmlHashLookup (int *,int const*) ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 int xsltTransformError (int *,TYPE_2__*,TYPE_3__*,char*,...) ;

__attribute__((used)) static void
xsltCheckParentElement(xsltStylesheetPtr style, xmlNodePtr inst,
                       const xmlChar *allow1, const xmlChar *allow2) {
    xmlNodePtr parent;

    if ((style == ((void*)0)) || (inst == ((void*)0)) || (inst->ns == ((void*)0)) ||
        (style->literal_result))
        return;

    parent = inst->parent;
    if (parent == ((void*)0)) {
 xsltTransformError(((void*)0), style, inst,
  "internal problem: element has no parent\n");
 style->errors++;
 return;
    }
    if (((parent->ns == inst->ns) ||
  ((parent->ns != ((void*)0)) &&
   (xmlStrEqual(parent->ns->href, inst->ns->href)))) &&
 ((xmlStrEqual(parent->name, allow1)) ||
  (xmlStrEqual(parent->name, allow2)))) {
 return;
    }

    if (style->extInfos != ((void*)0)) {
 while ((parent != ((void*)0)) && (parent->type != XML_DOCUMENT_NODE)) {




     if ((parent->ns != ((void*)0)) &&
  (xmlHashLookup(style->extInfos, parent->ns->href) != ((void*)0)))
  return;

     parent = parent->parent;
 }
    }
    xsltTransformError(((void*)0), style, inst,
         "element %s is not allowed within that context\n",
         inst->name);
    style->errors++;
}
