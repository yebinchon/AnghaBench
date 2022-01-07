
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* ioctl ) (int ,int ,int,int *) ;} ;
typedef TYPE_2__ mp_pin_p_t ;
typedef int mp_obj_t ;
struct TYPE_6__ {TYPE_1__* type; } ;
typedef TYPE_3__ mp_obj_base_t ;
struct TYPE_4__ {scalar_t__ protocol; } ;


 scalar_t__ MP_OBJ_TO_PTR (int ) ;
 int MP_PIN_WRITE ;
 int stub1 (int ,int ,int,int *) ;

void mp_virtual_pin_write(mp_obj_t pin, int value) {
    mp_obj_base_t* s = (mp_obj_base_t*)MP_OBJ_TO_PTR(pin);
    mp_pin_p_t *pin_p = (mp_pin_p_t*)s->type->protocol;
    pin_p->ioctl(pin, MP_PIN_WRITE, value, ((void*)0));
}
