
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ mp_obj_cell_t ;


 TYPE_1__* MP_OBJ_TO_PTR (int ) ;

mp_obj_t mp_obj_cell_get(mp_obj_t self_in) {
    mp_obj_cell_t *self = MP_OBJ_TO_PTR(self_in);
    return self->obj;
}
