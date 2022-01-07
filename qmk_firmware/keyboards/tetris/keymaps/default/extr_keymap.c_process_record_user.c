
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int keyrecord_t ;
struct TYPE_2__ {int mode; } ;


 int RGB_LAYER0_mode ;

 TYPE_1__ rgblight_config ;

bool process_record_user(uint16_t keycode, keyrecord_t * record) {
  switch (keycode) {
  case 128:
    RGB_LAYER0_mode = rgblight_config.mode;
    break;
  default:
    return (1);
  }
  return (1);
}
