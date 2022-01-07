
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlAttrPtr ;
struct TYPE_10__ {TYPE_1__* children; } ;
struct TYPE_9__ {struct TYPE_9__* next; struct TYPE_9__* children; int properties; } ;
struct TYPE_8__ {scalar_t__ content; } ;


 TYPE_3__* get_attribute_ex (int ,char*,char*) ;
 scalar_t__ node_is_equal_ex (TYPE_2__*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

xmlNodePtr get_node_with_attribute_recursive_ex(xmlNodePtr node, char *name, char *name_ns, char *attribute, char *value, char *attr_ns)
{
 while (node != ((void*)0)) {
  if (node_is_equal_ex(node, name, name_ns)) {
   xmlAttrPtr attr = get_attribute_ex(node->properties, attribute, attr_ns);
   if (attr != ((void*)0) && strcmp((char*)attr->children->content, value) == 0) {
    return node;
   }
  }
  if (node->children != ((void*)0)) {
   xmlNodePtr tmp = get_node_with_attribute_recursive_ex(node->children, name, name_ns, attribute, value, attr_ns);
   if (tmp) {
    return tmp;
   }
  }
  node = node->next;
 }
 return ((void*)0);
}
