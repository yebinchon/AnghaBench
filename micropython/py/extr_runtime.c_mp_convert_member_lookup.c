
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ name; } ;
typedef TYPE_1__ mp_obj_type_t ;
typedef scalar_t__ mp_obj_t ;
struct TYPE_14__ {scalar_t__ fun; } ;
typedef TYPE_2__ mp_obj_static_class_method_t ;
struct TYPE_15__ {TYPE_1__* type; } ;
typedef TYPE_3__ mp_obj_base_t ;


 scalar_t__ MP_OBJ_FROM_PTR (TYPE_1__ const*) ;
 scalar_t__ MP_OBJ_NULL ;
 scalar_t__ MP_OBJ_TO_PTR (scalar_t__) ;
 scalar_t__ MP_QSTR_closure ;
 scalar_t__ MP_QSTR_generator ;
 TYPE_1__* mp_obj_get_type (scalar_t__) ;
 scalar_t__ mp_obj_is_fun (scalar_t__) ;
 scalar_t__ mp_obj_is_obj (scalar_t__) ;
 scalar_t__ mp_obj_is_type (scalar_t__,int *) ;
 scalar_t__ mp_obj_new_checked_fun (TYPE_1__ const*,scalar_t__) ;
 int mp_type_classmethod ;
 TYPE_1__ const mp_type_fun_builtin_0 ;
 TYPE_1__ const mp_type_fun_builtin_1 ;
 TYPE_1__ const mp_type_fun_builtin_2 ;
 TYPE_1__ const mp_type_fun_builtin_3 ;
 TYPE_1__ const mp_type_fun_builtin_var ;
 int mp_type_staticmethod ;
 int mp_type_type ;

void mp_convert_member_lookup(mp_obj_t self, const mp_obj_type_t *type, mp_obj_t member, mp_obj_t *dest) {
    if (mp_obj_is_type(member, &mp_type_staticmethod)) {

        dest[0] = ((mp_obj_static_class_method_t*)MP_OBJ_TO_PTR(member))->fun;
    } else if (mp_obj_is_type(member, &mp_type_classmethod)) {



        if (self != MP_OBJ_NULL) {
            type = mp_obj_get_type(self);
        }
        dest[0] = ((mp_obj_static_class_method_t*)MP_OBJ_TO_PTR(member))->fun;
        dest[1] = MP_OBJ_FROM_PTR(type);
    } else if (mp_obj_is_type(member, &mp_type_type)) {

        dest[0] = member;
    } else if (mp_obj_is_fun(member)
        || (mp_obj_is_obj(member)
            && (((mp_obj_base_t*)MP_OBJ_TO_PTR(member))->type->name == MP_QSTR_closure
                || ((mp_obj_base_t*)MP_OBJ_TO_PTR(member))->type->name == MP_QSTR_generator))) {
        {

            dest[0] = member;
            dest[1] = self;
        }
    } else {

        dest[0] = member;
    }
}
