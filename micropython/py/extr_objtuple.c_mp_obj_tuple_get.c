
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int * items; } ;
typedef TYPE_1__ mp_obj_tuple_t ;
typedef int mp_obj_t ;


 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 int assert (int ) ;
 int mp_obj_is_tuple_compatible (int ) ;

void mp_obj_tuple_get(mp_obj_t self_in, size_t *len, mp_obj_t **items) {
    assert(mp_obj_is_tuple_compatible(self_in));
    mp_obj_tuple_t *self = MP_OBJ_TO_PTR(self_in);
    *len = self->len;
    *items = &self->items[0];
}
