
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ make_new; } ;
typedef TYPE_1__ mp_obj_type_t ;
typedef int mp_obj_t ;


 int MP_OBJ_FROM_PTR (int *) ;
 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 scalar_t__ mp_obj_exception_make_new ;
 int mp_obj_is_subclass_fast (int ,int ) ;
 scalar_t__ mp_obj_is_type (int ,int *) ;
 int mp_type_BaseException ;
 int mp_type_type ;

bool mp_obj_is_exception_type(mp_obj_t self_in) {
    if (mp_obj_is_type(self_in, &mp_type_type)) {

        mp_obj_type_t *self = MP_OBJ_TO_PTR(self_in);
        if (self->make_new == mp_obj_exception_make_new) {
            return 1;
        }
    }
    return mp_obj_is_subclass_fast(self_in, MP_OBJ_FROM_PTR(&mp_type_BaseException));
}
