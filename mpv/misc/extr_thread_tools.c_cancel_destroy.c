
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct mp_cancel {scalar_t__* wakeup_pipe; int wakeup; int lock; scalar_t__ win32_event; TYPE_1__ slaves; } ;


 int CloseHandle (scalar_t__) ;
 int assert (int) ;
 int close (scalar_t__) ;
 int mp_cancel_set_parent (struct mp_cancel*,int *) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void cancel_destroy(void *p)
{
    struct mp_cancel *c = p;

    assert(!c->slaves.head);

    mp_cancel_set_parent(c, ((void*)0));

    if (c->wakeup_pipe[0] >= 0) {
        close(c->wakeup_pipe[0]);
        close(c->wakeup_pipe[1]);
    }






    pthread_mutex_destroy(&c->lock);
    pthread_cond_destroy(&c->wakeup);
}
