
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int ret_val; } ;
typedef TYPE_1__ nlr_buf_t ;
typedef scalar_t__ mp_obj_t ;


 int EXTI_NUM_VECTORS ;
 int MICROPY_ERROR_PRINTER ;
 scalar_t__ MP_OBJ_FROM_PTR (int ) ;
 scalar_t__* MP_STATE_PORT (int ) ;
 int PENDSV_DISPATCH_CYW43 ;
 int __HAL_GPIO_EXTI_CLEAR_FLAG (int) ;
 scalar_t__ __HAL_GPIO_EXTI_GET_FLAG (int) ;
 int extint_disable (int) ;
 int gc_lock () ;
 int gc_unlock () ;
 int mp_call_function_1 (scalar_t__,scalar_t__) ;
 scalar_t__ mp_const_none ;
 int mp_obj_print_exception (int *,scalar_t__) ;
 int mp_plat_print ;
 int mp_printf (int ,char*,unsigned int) ;
 int mp_sched_lock () ;
 int mp_sched_schedule (scalar_t__,scalar_t__) ;
 int mp_sched_unlock () ;
 int nlr_pop () ;
 scalar_t__ nlr_push (TYPE_1__*) ;
 int pendsv_schedule_dispatch (int ,void (*) ()) ;
 int pyb_extint_callback ;
 scalar_t__* pyb_extint_callback_arg ;
 int * pyb_extint_hard_irq ;
 int pyb_pin_WL_HOST_WAKE ;

void Handle_EXTI_Irq(uint32_t line) {
    if (__HAL_GPIO_EXTI_GET_FLAG(1 << line)) {
        __HAL_GPIO_EXTI_CLEAR_FLAG(1 << line);
        if (line < EXTI_NUM_VECTORS) {
            mp_obj_t *cb = &MP_STATE_PORT(pyb_extint_callback)[line];
            if (*cb != mp_const_none) {

                if (!pyb_extint_hard_irq[line]) {
                    mp_sched_schedule(*cb, pyb_extint_callback_arg[line]);
                    return;
                }

                mp_sched_lock();


                gc_lock();
                nlr_buf_t nlr;
                if (nlr_push(&nlr) == 0) {
                    mp_call_function_1(*cb, pyb_extint_callback_arg[line]);
                    nlr_pop();
                } else {

                    *cb = mp_const_none;
                    extint_disable(line);
                    mp_printf(MICROPY_ERROR_PRINTER, "uncaught exception in ExtInt interrupt handler line %u\n", (unsigned int)line);
                    mp_obj_print_exception(&mp_plat_print, MP_OBJ_FROM_PTR(nlr.ret_val));
                }
                gc_unlock();
                mp_sched_unlock();
            }
        }
    }
}
