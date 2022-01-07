
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; } ;
struct timeout_queue {scalar_t__ time; TYPE_1__ head; } ;
struct lwan_connection {scalar_t__ time_to_die; } ;


 int timeout_queue_empty (struct timeout_queue*) ;
 struct lwan_connection* timeout_queue_idx_to_node (struct timeout_queue*,int ) ;
 int timeout_queue_kill (struct timeout_queue*,struct lwan_connection*) ;

void timeout_queue_kill_waiting(struct timeout_queue *tq)
{
    tq->time++;

    while (!timeout_queue_empty(tq)) {
        struct lwan_connection *conn =
            timeout_queue_idx_to_node(tq, tq->head.next);

        if (conn->time_to_die > tq->time)
            return;

        timeout_queue_kill(tq, conn);
    }


    tq->time = 0;
}
