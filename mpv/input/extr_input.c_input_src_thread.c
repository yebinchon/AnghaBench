
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_input_src {TYPE_1__* in; } ;
struct TYPE_2__ {int thread_running; int init_done; } ;


 int mp_rendezvous (int *,int) ;
 int mpthread_set_name (char*) ;

__attribute__((used)) static void *input_src_thread(void *ptr)
{
    void **args = ptr;
    struct mp_input_src *src = args[0];
    void (*loop_fn)(struct mp_input_src *src, void *ctx) = args[1];
    void *ctx = args[2];

    mpthread_set_name("input source");

    src->in->thread_running = 1;

    loop_fn(src, ctx);

    if (!src->in->init_done)
        mp_rendezvous(&src->in->init_done, -1);

    return ((void*)0);
}
