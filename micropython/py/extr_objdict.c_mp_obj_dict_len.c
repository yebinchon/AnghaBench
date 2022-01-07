
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_4__ {size_t used; } ;
struct TYPE_5__ {TYPE_1__ map; } ;
typedef TYPE_2__ mp_obj_dict_t ;


 TYPE_2__* MP_OBJ_TO_PTR (int ) ;

size_t mp_obj_dict_len(mp_obj_t self_in) {
    mp_obj_dict_t *self = MP_OBJ_TO_PTR(self_in);
    return self->map.used;
}
