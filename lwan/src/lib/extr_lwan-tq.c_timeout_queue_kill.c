
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_queue {int lwan; } ;
struct lwan_connection {int * coro; } ;


 scalar_t__ LIKELY (int *) ;
 int close (int ) ;
 int coro_free (int *) ;
 int lwan_connection_get_fd (int ,struct lwan_connection*) ;
 int timeout_queue_remove (struct timeout_queue*,struct lwan_connection*) ;

void timeout_queue_kill(struct timeout_queue *tq, struct lwan_connection *conn)
{
    timeout_queue_remove(tq, conn);

    if (LIKELY(conn->coro)) {
        coro_free(conn->coro);
        conn->coro = ((void*)0);

        close(lwan_connection_get_fd(tq->lwan, conn));
    }
}
