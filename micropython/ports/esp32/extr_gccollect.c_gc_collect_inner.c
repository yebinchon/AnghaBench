
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int volatile mp_uint_t ;


 scalar_t__ MP_STATE_THREAD (int ) ;
 int XCHAL_NUM_AREGS ;
 int gc_collect_root (void**,int volatile) ;
 int get_sp () ;
 int mp_thread_gc_others () ;
 int stack_top ;

__attribute__((used)) static void gc_collect_inner(int level) {
    if (level < XCHAL_NUM_AREGS / 8) {
        gc_collect_inner(level + 1);
        if (level != 0) {
            return;
        }
    }

    if (level == XCHAL_NUM_AREGS / 8) {

        volatile uint32_t sp = (uint32_t)get_sp();
        gc_collect_root((void**)sp, ((mp_uint_t)MP_STATE_THREAD(stack_top) - sp) / sizeof(uint32_t));
        return;
    }





}
