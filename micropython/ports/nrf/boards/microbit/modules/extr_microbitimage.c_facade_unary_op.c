
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; } ;
typedef TYPE_1__ string_image_facade_t ;
typedef int mp_unary_op_t ;
typedef scalar_t__ mp_obj_t ;


 scalar_t__ MP_OBJ_NULL ;

 scalar_t__ mp_obj_len (int ) ;

__attribute__((used)) static mp_obj_t facade_unary_op(mp_unary_op_t op, mp_obj_t self_in) {
    string_image_facade_t *self = (string_image_facade_t *)self_in;
    switch (op) {
        case 128:
            return mp_obj_len(self->string);
        default: return MP_OBJ_NULL;
    }
}
