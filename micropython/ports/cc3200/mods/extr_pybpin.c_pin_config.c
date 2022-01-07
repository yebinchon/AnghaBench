
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint ;
struct TYPE_4__ {int af; int value; int used; void* strength; void* pull; void* mode; } ;
typedef TYPE_1__ pin_obj_t ;
typedef int mp_obj_t ;
typedef int WakeUpCB_t ;


 int pin_obj_configure (TYPE_1__ const*) ;
 int pyb_sleep_add (int const,int ) ;

void pin_config (pin_obj_t *self, int af, uint mode, uint pull, int value, uint strength) {
    self->mode = mode, self->pull = pull, self->strength = strength;

    if (af != -1) {
        self->af = af;
    }


    if (value != -1) {
        self->value = value;
    }


    self->used = 1;
    pin_obj_configure ((const pin_obj_t *)self);


    pyb_sleep_add ((const mp_obj_t)self, (WakeUpCB_t)pin_obj_configure);
}
