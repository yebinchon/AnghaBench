
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* array; } ;
struct text_node {struct text_node* next; TYPE_1__ str; struct text_node* first_subnode; } ;


 int dstr_is_empty (TYPE_1__*) ;

__attribute__((used)) static struct text_node *text_node_bychar(struct text_node *node, char ch)
{
 struct text_node *subnode = node->first_subnode;

 while (subnode) {
  if (!dstr_is_empty(&subnode->str) &&
      subnode->str.array[0] == ch)
   return subnode;

  subnode = subnode->next;
 }

 return ((void*)0);
}
