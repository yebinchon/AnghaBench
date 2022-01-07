
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_5__ {TYPE_1__* args; } ;
typedef TYPE_2__ mp_obj_exception_t ;
struct TYPE_4__ {scalar_t__ len; int * items; } ;


 TYPE_2__* MP_OBJ_TO_PTR (int ) ;
 int mp_const_none ;

mp_obj_t mp_obj_exception_get_value(mp_obj_t self_in) {
    mp_obj_exception_t *self = MP_OBJ_TO_PTR(self_in);
    if (self->args->len == 0) {
        return mp_const_none;
    } else {
        return self->args->items[0];
    }
}
