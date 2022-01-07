
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mp_obj_type_t ;
typedef int mp_obj_t ;
struct TYPE_2__ {int * subobj; } ;
typedef TYPE_1__ mp_obj_instance_t ;
typedef int mp_const_obj_t ;


 int MP_OBJ_FROM_PTR (int *) ;
 int MP_OBJ_NULL ;
 scalar_t__ MP_OBJ_TO_PTR (int ) ;
 int * mp_obj_get_type (int ) ;
 int mp_obj_is_subclass_fast (int ,int ) ;

mp_obj_t mp_instance_cast_to_native_base(mp_const_obj_t self_in, mp_const_obj_t native_type) {
    mp_obj_type_t *self_type = mp_obj_get_type(self_in);
    if (!mp_obj_is_subclass_fast(MP_OBJ_FROM_PTR(self_type), native_type)) {
        return MP_OBJ_NULL;
    }
    mp_obj_instance_t *self = (mp_obj_instance_t*)MP_OBJ_TO_PTR(self_in);
    return self->subobj[0];
}
