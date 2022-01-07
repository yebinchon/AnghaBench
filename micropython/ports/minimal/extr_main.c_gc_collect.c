
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;


 int gc_collect_end () ;
 int gc_collect_root (void**,int) ;
 int gc_collect_start () ;
 int gc_dump_info () ;
 scalar_t__ stack_top ;

void gc_collect(void) {


    void *dummy;
    gc_collect_start();
    gc_collect_root(&dummy, ((mp_uint_t)stack_top - (mp_uint_t)&dummy) / sizeof(mp_uint_t));
    gc_collect_end();
    gc_dump_info();
}
