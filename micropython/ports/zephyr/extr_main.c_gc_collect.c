
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;


 scalar_t__ MP_STATE_THREAD (int ) ;
 int gc_collect_end () ;
 int gc_collect_root (void**,int) ;
 int gc_collect_start () ;
 int stack_top ;

void gc_collect(void) {


    void *dummy;
    gc_collect_start();
    gc_collect_root(&dummy, ((mp_uint_t)MP_STATE_THREAD(stack_top) - (mp_uint_t)&dummy) / sizeof(mp_uint_t));
    gc_collect_end();

}
