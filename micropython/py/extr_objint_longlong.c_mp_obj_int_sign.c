
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* mp_obj_t ;
struct TYPE_6__ {scalar_t__ val; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef scalar_t__ mp_longint_impl_t ;


 scalar_t__ MP_OBJ_SMALL_INT_VALUE (TYPE_1__*) ;
 scalar_t__ mp_obj_is_small_int (TYPE_1__*) ;

int mp_obj_int_sign(mp_obj_t self_in) {
    mp_longint_impl_t val;
    if (mp_obj_is_small_int(self_in)) {
        val = MP_OBJ_SMALL_INT_VALUE(self_in);
    } else {
        mp_obj_int_t *self = self_in;
        val = self->val;
    }
    if (val < 0) {
        return -1;
    } else if (val > 0) {
        return 1;
    } else {
        return 0;
    }
}
