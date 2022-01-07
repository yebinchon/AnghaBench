
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
typedef int pin_obj_t ;
struct TYPE_5__ {int used; TYPE_1__* table; } ;
typedef TYPE_2__ mp_map_t ;
struct TYPE_6__ {TYPE_2__ map; } ;
struct TYPE_4__ {scalar_t__ value; } ;


 TYPE_3__ pin_board_pins_locals_dict ;
 int pin_deassign (int *) ;

void pin_init0(void) {




    const mp_map_t *named_map = &pin_board_pins_locals_dict.map;
    for (uint i = 0; i < named_map->used - 1; i++) {
        pin_obj_t * pin = (pin_obj_t *)named_map->table[i].value;
        pin_deassign (pin);
    }

}
