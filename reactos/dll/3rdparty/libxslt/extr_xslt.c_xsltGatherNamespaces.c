
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_10__ {scalar_t__ type; struct TYPE_10__* next; struct TYPE_10__* parent; struct TYPE_10__* children; TYPE_2__* nsDef; } ;
struct TYPE_9__ {struct TYPE_9__* next; scalar_t__ href; int * prefix; } ;
struct TYPE_8__ {scalar_t__ doc; int * nsHash; int warnings; int errors; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_ENTITY_DECL ;
 TYPE_3__* xmlDocGetRootElement (scalar_t__) ;
 int * xmlHashCreate (int) ;
 int * xmlHashLookup (int *,int *) ;
 int xmlHashUpdateEntry (int *,int *,void*,int *) ;
 int xmlStrEqual (int const*,scalar_t__) ;
 int xsltGenericDebug (int ,char*,int *,scalar_t__) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_3__*,char*,...) ;

__attribute__((used)) static void
xsltGatherNamespaces(xsltStylesheetPtr style) {
    xmlNodePtr cur;
    const xmlChar *URI;

    if (style == ((void*)0))
        return;
    cur = xmlDocGetRootElement(style->doc);
    while (cur != ((void*)0)) {
 if (cur->type == XML_ELEMENT_NODE) {
     xmlNsPtr ns = cur->nsDef;
     while (ns != ((void*)0)) {
  if (ns->prefix != ((void*)0)) {
      if (style->nsHash == ((void*)0)) {
   style->nsHash = xmlHashCreate(10);
   if (style->nsHash == ((void*)0)) {
       xsltTransformError(((void*)0), style, cur,
   "xsltGatherNamespaces: failed to create hash table\n");
       style->errors++;
       return;
   }
      }
      URI = xmlHashLookup(style->nsHash, ns->prefix);
      if ((URI != ((void*)0)) && (!xmlStrEqual(URI, ns->href))) {
   xsltTransformError(((void*)0), style, cur,
      "Namespaces prefix %s used for multiple namespaces\n",ns->prefix);
   style->warnings++;
      } else if (URI == ((void*)0)) {
   xmlHashUpdateEntry(style->nsHash, ns->prefix,
       (void *) ns->href, ((void*)0));





      }
  }
  ns = ns->next;
     }
 }




 if (cur->children != ((void*)0)) {
     if (cur->children->type != XML_ENTITY_DECL) {
  cur = cur->children;
  continue;
     }
 }
 if (cur->next != ((void*)0)) {
     cur = cur->next;
     continue;
 }

 do {
     cur = cur->parent;
     if (cur == ((void*)0))
  break;
     if (cur == (xmlNodePtr) style->doc) {
  cur = ((void*)0);
  break;
     }
     if (cur->next != ((void*)0)) {
  cur = cur->next;
  break;
     }
 } while (cur != ((void*)0));
    }
}
