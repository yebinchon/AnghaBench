
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_queue {int dummy; } ;
struct lwan_connection {int prev; int next; } ;


 struct lwan_connection* timeout_queue_idx_to_node (struct timeout_queue*,int ) ;

__attribute__((used)) static void timeout_queue_remove(struct timeout_queue *tq,
                                 struct lwan_connection *node)
{
    struct lwan_connection *prev = timeout_queue_idx_to_node(tq, node->prev);
    struct lwan_connection *next = timeout_queue_idx_to_node(tq, node->next);

    next->prev = node->prev;
    prev->next = node->next;

    node->next = node->prev = -1;
}
