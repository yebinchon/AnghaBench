
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int thread; int dispatch; } ;
struct vo {struct vo_internal* in; } ;


 int dealloc_vo (struct vo*) ;
 int mp_dispatch_run (int ,int ,struct vo*) ;
 int pthread_join (int ,int *) ;
 int terminate_vo ;

void vo_destroy(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    mp_dispatch_run(in->dispatch, terminate_vo, vo);
    pthread_join(vo->in->thread, ((void*)0));
    dealloc_vo(vo);
}
