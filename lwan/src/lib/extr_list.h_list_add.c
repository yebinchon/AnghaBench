
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_node {struct list_node* next; struct list_node* prev; } ;
struct list_head {struct list_node n; } ;


 int list_debug (struct list_head*) ;

__attribute__((used)) static inline void list_add(struct list_head *h, struct list_node *n)
{
 n->next = h->n.next;
 n->prev = &h->n;
 h->n.next->prev = n;
 h->n.next = n;
 (void)list_debug(h);
}
