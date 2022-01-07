
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* parent; } ;
typedef TYPE_1__ mp_obj_type_t ;
struct TYPE_7__ {int len; int * items; } ;
typedef TYPE_2__ mp_obj_tuple_t ;
typedef int mp_obj_t ;
struct TYPE_8__ {int * type; } ;
typedef TYPE_3__ mp_obj_base_t ;
typedef int mp_const_obj_t ;


 int MP_OBJ_FROM_PTR (TYPE_2__*) ;
 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 int mp_obj_is_type (int ,int *) ;
 int mp_type_tuple ;
 int mp_type_type ;

bool mp_obj_is_subclass_fast(mp_const_obj_t object, mp_const_obj_t classinfo) {
    for (;;) {
        if (object == classinfo) {
            return 1;
        }




        if (!mp_obj_is_type(object, &mp_type_type)) {
            return 0;
        }

        const mp_obj_type_t *self = MP_OBJ_TO_PTR(object);

        if (self->parent == ((void*)0)) {

            return 0;
        } else {

            object = MP_OBJ_FROM_PTR(self->parent);
        }
    }
}
