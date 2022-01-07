
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_node {TYPE_2__* prev; TYPE_1__* next; } ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {TYPE_2__* prev; } ;


 int list_debug_node (struct list_node*) ;

__attribute__((used)) static inline void list_del(struct list_node *n)
{
 (void)list_debug_node(n);
 n->next->prev = n->prev;
 n->prev->next = n->next;




}
