
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mp_uint_t ;


 int STACK_END ;
 int gc_collect_end () ;
 int gc_collect_root (void**,int) ;
 int gc_collect_start () ;
 int gc_helper_get_regs_and_sp (int*) ;

void gc_collect(void) {

    gc_collect_start();


    mp_uint_t regs[8];
    mp_uint_t sp = gc_helper_get_regs_and_sp(regs);


    gc_collect_root((void**)sp, (STACK_END - sp) / sizeof(uint32_t));


    gc_collect_end();
}
