
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;


 int MOD_BIT (int ) ;
 TYPE_4__* keyboard_report ;
 int register_code (int ) ;
 int unregister_code (int ) ;

__attribute__((used)) static bool special_mods(uint16_t keycode, keyrecord_t *record, uint16_t modifier) {
  if (record->event.pressed && (keyboard_report->mods & MOD_BIT(modifier))) {
    register_code(keycode);
    return 0;
  } else {
    unregister_code(keycode);
    return 1;
  }
}
