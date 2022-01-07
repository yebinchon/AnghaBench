
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_connection {int dummy; } ;
struct timeout_queue {struct lwan_connection* conns; struct lwan_connection head; } ;
typedef scalar_t__ ptrdiff_t ;



__attribute__((used)) static inline int timeout_queue_node_to_idx(struct timeout_queue *tq,
                                            struct lwan_connection *conn)
{
    return (conn == &tq->head) ? -1 : (int)(ptrdiff_t)(conn - tq->conns);
}
