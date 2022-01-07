
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_input_src {TYPE_1__* in; } ;
struct TYPE_2__ {int init_done; int thread_running; int thread; } ;


 int assert (int) ;
 int mp_rendezvous (int*,int ) ;
 int pthread_equal (int ,int ) ;
 int pthread_self () ;

void mp_input_src_init_done(struct mp_input_src *src)
{
    assert(!src->in->init_done);
    assert(src->in->thread_running);
    assert(pthread_equal(src->in->thread, pthread_self()));
    src->in->init_done = 1;
    mp_rendezvous(&src->in->init_done, 0);
}
