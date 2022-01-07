
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ao_push_state {int* wakeup_pipe; int lock; int wakeup; } ;
struct ao {TYPE_1__* driver; struct ao_push_state* api_priv; } ;
struct TYPE_2__ {int (* uninit ) (struct ao*) ;} ;


 int close (int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int stub1 (struct ao*) ;

__attribute__((used)) static void destroy_no_thread(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;

    ao->driver->uninit(ao);

    for (int n = 0; n < 2; n++) {
        int h = p->wakeup_pipe[n];
        if (h >= 0)
            close(h);
    }

    pthread_cond_destroy(&p->wakeup);
    pthread_mutex_destroy(&p->lock);
}
