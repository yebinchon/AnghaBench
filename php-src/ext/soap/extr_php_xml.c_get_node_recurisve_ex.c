
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* children; } ;


 scalar_t__ node_is_equal_ex (TYPE_1__*,char*,char*) ;

xmlNodePtr get_node_recurisve_ex(xmlNodePtr node, char *name, char *ns)
{
 while (node != ((void*)0)) {
  if (node_is_equal_ex(node, name, ns)) {
   return node;
  } else if (node->children != ((void*)0)) {
   xmlNodePtr tmp = get_node_recurisve_ex(node->children, name, ns);
   if (tmp) {
    return tmp;
   }
  }
  node = node->next;
 }
 return ((void*)0);
}
