
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_thread {int pending_fds; } ;


 scalar_t__ LIKELY (int) ;
 int close (int) ;
 int lwan_status_error (char*,int) ;
 int lwan_thread_nudge (struct lwan_thread*) ;
 int spsc_queue_push (int *,int) ;

void lwan_thread_add_client(struct lwan_thread *t, int fd)
{
    for (int i = 0; i < 10; i++) {
        bool pushed = spsc_queue_push(&t->pending_fds, fd);

        if (LIKELY(pushed))
            return;


        lwan_thread_nudge(t);
    }

    lwan_status_error("Dropping connection %d", fd);

    close(fd);
}
