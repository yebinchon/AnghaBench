
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_queue {scalar_t__ keep_alive_timeout; scalar_t__ time; } ;
struct lwan_connection {scalar_t__ time_to_die; } ;


 int timeout_queue_insert (struct timeout_queue*,struct lwan_connection*) ;
 int timeout_queue_remove (struct timeout_queue*,struct lwan_connection*) ;

void timeout_queue_move_to_last(struct timeout_queue *tq,
                                struct lwan_connection *conn)
{



    conn->time_to_die = tq->time + tq->keep_alive_timeout;

    timeout_queue_remove(tq, conn);
    timeout_queue_insert(tq, conn);
}
