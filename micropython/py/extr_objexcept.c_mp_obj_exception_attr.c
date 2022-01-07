
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qstr ;
typedef int mp_obj_t ;
struct TYPE_4__ {int * type; } ;
struct TYPE_5__ {TYPE_1__ base; int args; scalar_t__ traceback_len; } ;
typedef TYPE_2__ mp_obj_exception_t ;


 int MP_OBJ_FROM_PTR (int ) ;
 int MP_OBJ_NULL ;
 TYPE_2__* MP_OBJ_TO_PTR (int ) ;
 scalar_t__ MP_QSTR___traceback__ ;
 scalar_t__ MP_QSTR_args ;
 scalar_t__ MP_QSTR_value ;
 int mp_const_none ;
 int mp_obj_exception_get_value (int ) ;
 int mp_type_StopIteration ;

void mp_obj_exception_attr(mp_obj_t self_in, qstr attr, mp_obj_t *dest) {
    mp_obj_exception_t *self = MP_OBJ_TO_PTR(self_in);
    if (dest[0] != MP_OBJ_NULL) {

        if (attr == MP_QSTR___traceback__ && dest[1] == mp_const_none) {






            self->traceback_len = 0;
            dest[0] = MP_OBJ_NULL;
        }
        return;
    }
    if (attr == MP_QSTR_args) {
        dest[0] = MP_OBJ_FROM_PTR(self->args);
    } else if (self->base.type == &mp_type_StopIteration && attr == MP_QSTR_value) {
        dest[0] = mp_obj_exception_get_value(self_in);
    }
}
