
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* next; struct TYPE_5__* children; int content; } ;


 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 scalar_t__ is_blank (int ) ;
 int xmlFreeNode (TYPE_1__*) ;
 int xmlUnlinkNode (TYPE_1__*) ;

__attribute__((used)) static void cleanup_xml_node(xmlNodePtr node)
{
 xmlNodePtr trav;
 xmlNodePtr del = ((void*)0);

 trav = node->children;
 while (trav != ((void*)0)) {
  if (del != ((void*)0)) {
   xmlUnlinkNode(del);
   xmlFreeNode(del);
   del = ((void*)0);
  }
  if (trav->type == XML_TEXT_NODE) {
   if (is_blank(trav->content)) {
    del = trav;
   }
  } else if ((trav->type != XML_ELEMENT_NODE) &&
             (trav->type != XML_CDATA_SECTION_NODE)) {
   del = trav;
  } else if (trav->children != ((void*)0)) {
   cleanup_xml_node(trav);
  }
  trav = trav->next;
 }
 if (del != ((void*)0)) {
  xmlUnlinkNode(del);
  xmlFreeNode(del);
 }
}
