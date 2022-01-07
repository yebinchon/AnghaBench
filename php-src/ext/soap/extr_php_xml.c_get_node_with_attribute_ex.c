
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlAttrPtr ;
struct TYPE_11__ {TYPE_1__* children; } ;
struct TYPE_10__ {struct TYPE_10__* next; int properties; } ;
struct TYPE_9__ {scalar_t__ content; } ;


 TYPE_3__* get_attribute_ex (int ,char*,char*) ;
 TYPE_2__* get_node_ex (TYPE_2__*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

xmlNodePtr get_node_with_attribute_ex(xmlNodePtr node, char *name, char *name_ns, char *attribute, char *value, char *attr_ns)
{
 xmlAttrPtr attr;

 while (node != ((void*)0)) {
  if (name != ((void*)0)) {
   node = get_node_ex(node, name, name_ns);
   if (node==((void*)0)) {
    return ((void*)0);
   }
  }

  attr = get_attribute_ex(node->properties, attribute, attr_ns);
  if (attr != ((void*)0) && strcmp((char*)attr->children->content, value) == 0) {
   return node;
  }
  node = node->next;
 }
 return ((void*)0);
}
