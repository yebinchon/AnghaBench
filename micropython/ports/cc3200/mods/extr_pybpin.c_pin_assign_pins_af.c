
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pin_obj_t ;
typedef scalar_t__ mp_obj_t ;


 int PIN_STRENGTH_2MA ;
 scalar_t__ mp_const_none ;
 int pin_config (int *,int ,int ,int,int,int ) ;
 int * pin_find (scalar_t__) ;
 int pin_find_af_index (int *,int,int,int) ;
 int pin_free_af_from_pins (int,int,int) ;

void pin_assign_pins_af (mp_obj_t *pins, uint32_t n_pins, uint32_t pull, uint32_t fn, uint32_t unit) {
    for (int i = 0; i < n_pins; i++) {
        pin_free_af_from_pins(fn, unit, i);
        if (pins[i] != mp_const_none) {
            pin_obj_t *pin = pin_find(pins[i]);
            pin_config (pin, pin_find_af_index(pin, fn, unit, i), 0, pull, -1, PIN_STRENGTH_2MA);
        }
    }
}
