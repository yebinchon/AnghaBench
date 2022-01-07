
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int hue; int val; int sat; } ;





 int eeconfig_update_rgblight_default () ;
 int enableLEDTypeAnime ;
 TYPE_3__ rgblight_config ;
 int rgblight_enable () ;
 int rgblight_enable_noeeprom () ;
 int rgblight_mode_noeeprom (int) ;
 int rgblight_sethsv_noeeprom (int,int ,int ) ;
 int rgblight_step () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 129:






      break;
    case 130:






      return 0;
    case 128:







      return 0;
    default:
      break;
  }







    return 1;
}
