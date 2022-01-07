
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ret_val; } ;
typedef TYPE_1__ nlr_buf_t ;
typedef int mp_obj_t ;
struct TYPE_5__ {int * type; } ;
typedef TYPE_2__ mp_obj_base_t ;
typedef int MP_STATE_VM ;




 int BLANK_IMAGE ;
 scalar_t__ MILLISECONDS_PER_MACRO_TICK ;
 int MP_OBJ_FROM_PTR (int *) ;
 int MP_OBJ_STOP_ITERATION ;
 int ** MP_STATE_PORT (int ) ;
 int async_data ;
 scalar_t__ async_delay ;
 int async_iterator ;
 int async_mode ;
 int async_stop () ;
 scalar_t__ async_tick ;
 int draw_object (int ) ;
 int gc_lock () ;
 int gc_unlock () ;
 int microbit_display_obj ;
 int microbit_display_show (int *,int ) ;
 int mp_iternext_allow_raise (int ) ;
 int * mp_obj_get_type (int *) ;
 int mp_obj_is_subclass_fast (int ,int ) ;
 int mp_plat_print ;
 int mp_printf (int *,char*) ;
 int mp_type_MemoryError ;
 int mp_type_StopIteration ;
 int nlr_pop () ;
 int nlr_push (TYPE_1__*) ;

__attribute__((used)) static void microbit_display_update(void) {
    async_tick += MILLISECONDS_PER_MACRO_TICK;
    if (async_tick < async_delay) {
        return;
    }
    async_tick = 0;
    switch (async_mode) {
        case 129:
        {
            if (MP_STATE_PORT(async_data)[0] == ((void*)0) || MP_STATE_PORT(async_data)[1] == ((void*)0)) {
                async_stop();
                break;
            }


            mp_obj_t obj;
            nlr_buf_t nlr;
            gc_lock();
            if (nlr_push(&nlr) == 0) {
                obj = mp_iternext_allow_raise(async_iterator);
                nlr_pop();
                gc_unlock();
            } else {
                gc_unlock();
                if (!mp_obj_is_subclass_fast(MP_OBJ_FROM_PTR(((mp_obj_base_t*)nlr.ret_val)->type),
                    MP_OBJ_FROM_PTR(&mp_type_StopIteration))) {


                    if (mp_obj_get_type(nlr.ret_val) == &mp_type_MemoryError) {
                        mp_printf(&mp_plat_print, "Allocation in interrupt handler");
                    }
                    MP_STATE_VM(mp_pending_exception) = MP_OBJ_FROM_PTR(nlr.ret_val);
                }
                obj = MP_OBJ_STOP_ITERATION;
            }
            draw_object(obj);
            break;
        }
        case 128:
            microbit_display_show(&microbit_display_obj, BLANK_IMAGE);
            async_stop();
            break;
    }
}
