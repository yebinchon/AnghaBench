
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct percpu_list_node {struct percpu_list_node* next; } ;
struct percpu_list {TYPE_1__* c; } ;
struct TYPE_2__ {struct percpu_list_node* head; } ;



struct percpu_list_node *__percpu_list_pop(struct percpu_list *list, int cpu)
{
 struct percpu_list_node *node;

 node = list->c[cpu].head;
 if (!node)
  return ((void*)0);
 list->c[cpu].head = node->next;
 return node;
}
