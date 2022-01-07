
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_input_src {int (* uninit ) (struct mp_input_src*) ;TYPE_1__* in; int (* cancel ) (struct mp_input_src*) ;struct input_ctx* input_ctx; } ;
struct input_ctx {int num_sources; struct mp_input_src** sources; } ;
struct TYPE_2__ {int thread; scalar_t__ thread_running; } ;


 int MP_TARRAY_REMOVE_AT (struct mp_input_src**,int,int) ;
 int abort () ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int pthread_join (int ,int *) ;
 int stub1 (struct mp_input_src*) ;
 int stub2 (struct mp_input_src*) ;
 int talloc_free (struct mp_input_src*) ;

__attribute__((used)) static void mp_input_src_kill(struct mp_input_src *src)
{
    if (!src)
        return;
    struct input_ctx *ictx = src->input_ctx;
    input_lock(ictx);
    for (int n = 0; n < ictx->num_sources; n++) {
        if (ictx->sources[n] == src) {
            MP_TARRAY_REMOVE_AT(ictx->sources, ictx->num_sources, n);
            input_unlock(ictx);
            if (src->cancel)
                src->cancel(src);
            if (src->in->thread_running)
                pthread_join(src->in->thread, ((void*)0));
            if (src->uninit)
                src->uninit(src);
            talloc_free(src);
            return;
        }
    }
    abort();
}
