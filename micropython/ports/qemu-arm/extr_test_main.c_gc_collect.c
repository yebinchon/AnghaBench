
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ MP_STATE_THREAD (int ) ;
 int gc_collect_end () ;
 int gc_collect_root (void**,int) ;
 int gc_collect_start () ;
 uintptr_t gc_helper_get_regs_and_sp (uintptr_t*) ;
 int stack_top ;

void gc_collect(void) {
    gc_collect_start();


    uintptr_t regs[10];
    uintptr_t sp = gc_helper_get_regs_and_sp(regs);


    gc_collect_root((void**)sp, ((uint32_t)MP_STATE_THREAD(stack_top) - (uint32_t)sp) / sizeof(uint32_t));

    gc_collect_end();
}
