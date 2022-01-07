
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef int mp_int_t ;
typedef TYPE_1__* mp_const_obj_t ;


 int MP_OBJ_SMALL_INT_VALUE (TYPE_1__*) ;
 scalar_t__ mp_obj_is_small_int (TYPE_1__*) ;

mp_int_t mp_obj_int_get_truncated(mp_const_obj_t self_in) {
    if (mp_obj_is_small_int(self_in)) {
        return MP_OBJ_SMALL_INT_VALUE(self_in);
    } else {
        const mp_obj_int_t *self = self_in;
        return self->val;
    }
}
