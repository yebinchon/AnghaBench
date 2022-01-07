
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ret_val; } ;
typedef TYPE_2__ nlr_buf_t ;
struct TYPE_8__ {scalar_t__ handler; int parent; TYPE_1__* methods; scalar_t__ ishard; } ;
typedef TYPE_3__ mp_irq_obj_t ;
struct TYPE_6__ {int (* trigger ) (int ,int ) ;} ;


 int MP_OBJ_FROM_PTR (int ) ;
 int gc_lock () ;
 int gc_unlock () ;
 int mp_call_function_1 (scalar_t__,int ) ;
 scalar_t__ mp_const_none ;
 int mp_obj_print_exception (int *,int ) ;
 int mp_plat_print ;
 int mp_sched_schedule (scalar_t__,int ) ;
 int nlr_pop () ;
 scalar_t__ nlr_push (TYPE_2__*) ;
 int printf (char*) ;
 int stub1 (int ,int ) ;

void mp_irq_handler(mp_irq_obj_t *self) {
    if (self->handler != mp_const_none) {
        if (self->ishard) {


            gc_lock();
            nlr_buf_t nlr;
            if (nlr_push(&nlr) == 0) {
                mp_call_function_1(self->handler, self->parent);
                nlr_pop();
            } else {

                self->methods->trigger(self->parent, 0);
                self->handler = mp_const_none;
                printf("Uncaught exception in IRQ callback handler\n");
                mp_obj_print_exception(&mp_plat_print, MP_OBJ_FROM_PTR(nlr.ret_val));
            }
            gc_unlock();
        } else {

            mp_sched_schedule(self->handler, self->parent);
        }
    }
}
