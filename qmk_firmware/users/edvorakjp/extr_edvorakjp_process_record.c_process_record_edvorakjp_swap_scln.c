
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_LSFT ;
 int KC_RSFT ;
 scalar_t__ KC_SCLN ;
 int const MOD_BIT (int ) ;
 int get_mods () ;
 int set_mods (int const) ;

bool process_record_edvorakjp_swap_scln(uint16_t keycode, keyrecord_t *record) {
  return 1;
}
