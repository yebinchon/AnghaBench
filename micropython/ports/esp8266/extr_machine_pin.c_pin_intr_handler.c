
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ mp_obj_t ;


 int MP_OBJ_FROM_PTR (int *) ;
 scalar_t__ MP_OBJ_NULL ;
 scalar_t__* MP_STATE_PORT (int ) ;
 int gc_lock () ;
 int gc_unlock () ;
 int mp_call_function_1_protected (scalar_t__,int ) ;
 int mp_sched_lock () ;
 int mp_sched_schedule (scalar_t__,int ) ;
 int mp_sched_unlock () ;
 int pin_irq_handler ;
 scalar_t__* pin_irq_is_hard ;
 int * pyb_pin_obj ;

void pin_intr_handler(uint32_t status) {
    mp_sched_lock();
    gc_lock();
    status &= 0xffff;
    for (int p = 0; status; ++p, status >>= 1) {
        if (status & 1) {
            mp_obj_t handler = MP_STATE_PORT(pin_irq_handler)[p];
            if (handler != MP_OBJ_NULL) {
                if (pin_irq_is_hard[p]) {
                    mp_call_function_1_protected(handler, MP_OBJ_FROM_PTR(&pyb_pin_obj[p]));
                } else {
                    mp_sched_schedule(handler, MP_OBJ_FROM_PTR(&pyb_pin_obj[p]));
                }
            }
        }
    }
    gc_unlock();
    mp_sched_unlock();
}
