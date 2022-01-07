
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int array; } ;
struct text_node {struct text_node* next; TYPE_1__ str; struct text_node* first_subnode; } ;


 scalar_t__ astrcmpi_n (int ,char const*,int ) ;

__attribute__((used)) static struct text_node *text_node_byname(struct text_node *node,
       const char *name)
{
 struct text_node *subnode = node->first_subnode;

 while (subnode) {
  if (astrcmpi_n(subnode->str.array, name, subnode->str.len) == 0)
   return subnode;

  subnode = subnode->next;
 }

 return ((void*)0);
}
