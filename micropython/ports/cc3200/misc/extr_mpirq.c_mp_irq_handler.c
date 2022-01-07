
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ret_val; } ;
typedef TYPE_2__ nlr_buf_t ;
typedef TYPE_3__* mp_obj_t ;
struct TYPE_10__ {scalar_t__ handler; int parent; TYPE_1__* methods; } ;
typedef TYPE_3__ mp_irq_obj_t ;
struct TYPE_8__ {int (* disable ) (int ) ;} ;


 int gc_lock () ;
 int gc_unlock () ;
 int mp_call_function_1 (scalar_t__,int ) ;
 scalar_t__ mp_const_none ;
 int mp_obj_print_exception (int *,TYPE_3__*) ;
 int mp_plat_print ;
 int mperror_signal_error () ;
 int nlr_pop () ;
 scalar_t__ nlr_push (TYPE_2__*) ;
 int printf (char*) ;
 int stub1 (int ) ;

void mp_irq_handler (mp_obj_t self_in) {
    mp_irq_obj_t *self = self_in;
    if (self && self->handler != mp_const_none) {


        gc_lock();
        nlr_buf_t nlr;
        if (nlr_push(&nlr) == 0) {
            mp_call_function_1(self->handler, self->parent);
            nlr_pop();
        }
        else {

            self->methods->disable (self->parent);
            self->handler = mp_const_none;


            printf("Uncaught exception in callback handler\n");
            mp_obj_print_exception(&mp_plat_print, (mp_obj_t)nlr.ret_val);
            mperror_signal_error();
        }
        gc_unlock();
    }
}
