
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int pyb_timer_obj_t ;


 size_t PYB_TIMER_OBJ_ALL_NUM ;
 int pyb_timer_deinit (int *) ;
 int ** pyb_timer_obj_all ;

void timer_deinit(void) {
    for (uint i = 0; i < PYB_TIMER_OBJ_ALL_NUM; i++) {
        pyb_timer_obj_t *tim = pyb_timer_obj_all[i];
        if (tim != ((void*)0)) {
            pyb_timer_deinit(tim);
        }
    }
}
