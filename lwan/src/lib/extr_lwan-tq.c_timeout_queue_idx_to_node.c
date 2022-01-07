
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_connection {int dummy; } ;
struct timeout_queue {struct lwan_connection* conns; struct lwan_connection head; } ;



__attribute__((used)) static inline struct lwan_connection *
timeout_queue_idx_to_node(struct timeout_queue *tq, int idx)
{
    return (idx < 0) ? &tq->head : &tq->conns[idx];
}
