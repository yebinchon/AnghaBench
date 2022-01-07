
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlAttrPtr ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 scalar_t__ attr_is_equal_ex (TYPE_1__*,char*,char*) ;

xmlAttrPtr get_attribute_ex(xmlAttrPtr node, char *name, char *ns)
{
 while (node!=((void*)0)) {
  if (attr_is_equal_ex(node, name, ns)) {
   return node;
  }
  node = node->next;
 }
 return ((void*)0);
}
