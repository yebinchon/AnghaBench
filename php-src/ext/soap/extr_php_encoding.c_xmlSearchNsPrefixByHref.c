
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_8__ {scalar_t__ type; struct TYPE_8__* parent; TYPE_1__* ns; TYPE_1__* nsDef; } ;
struct TYPE_7__ {scalar_t__ prefix; scalar_t__ href; struct TYPE_7__* next; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_ENTITY_DECL ;
 scalar_t__ XML_ENTITY_NODE ;
 scalar_t__ XML_ENTITY_REF_NODE ;
 TYPE_1__* xmlSearchNs (int ,TYPE_2__*,scalar_t__) ;
 scalar_t__ xmlStrEqual (scalar_t__,int const*) ;

__attribute__((used)) static xmlNsPtr xmlSearchNsPrefixByHref(xmlDocPtr doc, xmlNodePtr node, const xmlChar * href)
{
 xmlNsPtr cur;
 xmlNodePtr orig = node;

 while (node) {
  if (node->type == XML_ENTITY_REF_NODE ||
      node->type == XML_ENTITY_NODE ||
      node->type == XML_ENTITY_DECL) {
   return ((void*)0);
  }
  if (node->type == XML_ELEMENT_NODE) {
   cur = node->nsDef;
   while (cur != ((void*)0)) {
    if (cur->prefix && cur->href && xmlStrEqual(cur->href, href)) {
     if (xmlSearchNs(doc, node, cur->prefix) == cur) {
      return cur;
     }
    }
    cur = cur->next;
   }
   if (orig != node) {
    cur = node->ns;
    if (cur != ((void*)0)) {
     if (cur->prefix && cur->href && xmlStrEqual(cur->href, href)) {
      if (xmlSearchNs(doc, node, cur->prefix) == cur) {
       return cur;
      }
     }
    }
   }
  }
  node = node->parent;
 }
 return ((void*)0);
}
