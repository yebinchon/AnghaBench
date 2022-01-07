
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int led_id; } ;
typedef TYPE_1__ pyb_led_obj_t ;
typedef int mp_print_t ;
typedef int mp_print_kind_t ;
typedef TYPE_1__* mp_obj_t ;


 int mp_printf (int const*,char*,int ) ;

void led_obj_print(const mp_print_t *print, mp_obj_t self_in, mp_print_kind_t kind) {
    pyb_led_obj_t *self = self_in;
    (void)kind;
    mp_printf(print, "<LED %lu>", self->led_id);
}
