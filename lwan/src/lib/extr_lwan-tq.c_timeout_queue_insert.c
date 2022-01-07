
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev; } ;
struct timeout_queue {TYPE_1__ head; } ;
struct lwan_connection {int next; int prev; } ;


 struct lwan_connection* timeout_queue_idx_to_node (struct timeout_queue*,int) ;
 int timeout_queue_node_to_idx (struct timeout_queue*,struct lwan_connection*) ;

void timeout_queue_insert(struct timeout_queue *tq,
                          struct lwan_connection *new_node)
{
    new_node->next = -1;
    new_node->prev = tq->head.prev;
    struct lwan_connection *prev = timeout_queue_idx_to_node(tq, tq->head.prev);
    tq->head.prev = prev->next = timeout_queue_node_to_idx(tq, new_node);
}
