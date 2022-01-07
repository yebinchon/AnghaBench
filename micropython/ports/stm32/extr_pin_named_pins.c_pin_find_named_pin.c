
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pin_obj_t ;
typedef int mp_obj_t ;
struct TYPE_5__ {int map; } ;
typedef TYPE_1__ mp_obj_dict_t ;
typedef int mp_map_t ;
struct TYPE_6__ {scalar_t__ value; } ;
typedef TYPE_2__ mp_map_elem_t ;


 int MP_MAP_LOOKUP ;
 scalar_t__ MP_OBJ_NULL ;
 int const* MP_OBJ_TO_PTR (scalar_t__) ;
 TYPE_2__* mp_map_lookup (int *,int ,int ) ;

const pin_obj_t *pin_find_named_pin(const mp_obj_dict_t *named_pins, mp_obj_t name) {
    const mp_map_t *named_map = &named_pins->map;
    mp_map_elem_t *named_elem = mp_map_lookup((mp_map_t*)named_map, name, MP_MAP_LOOKUP);
    if (named_elem != ((void*)0) && named_elem->value != MP_OBJ_NULL) {
        return MP_OBJ_TO_PTR(named_elem->value);
    }
    return ((void*)0);
}
