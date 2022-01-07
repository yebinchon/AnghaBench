
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int LESC ;




 int S_COLEMAK ;
 int S_CRUSSIAN ;
 int S_ENGLISH ;
 int S_QRUSSIAN ;
 int TD (int ) ;
 int _CM ;
 int l_state ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int rgb ;
 int speed ;
 int sstate ;
 int update_led_state_c () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if(keycode != TD(LESC))
    sstate = 1;
  switch (keycode) {
    case 128:
      if (speed>25)
        speed -= 25;
      break;
    case 129:
      if (speed < 1000)
        speed += 25;
      break;
    case 130:
      if(record->event.pressed) {
        rgb = rgb == 0 ? 1 : 0;
        update_led_state_c();
      }
      break;
    case 131:
      if(record->event.pressed) {
        rgb = rgb == 0 ? 2 : 0;
        update_led_state_c();
      }
      break;
    case 133:
      if(record->event.pressed) {
        if (l_state == S_COLEMAK) {
          layer_off(_CM);
          l_state = S_ENGLISH;
        }
        else if (l_state == S_ENGLISH) {
          layer_on(_CM);
          l_state = S_COLEMAK;
        }
        else if (l_state == S_CRUSSIAN) { l_state = S_QRUSSIAN; }
        else if (l_state == S_QRUSSIAN) { l_state = S_CRUSSIAN; }
      }
      update_led_state_c();
      break;
    case 132:
      if(record->event.pressed) {
        if (l_state == S_ENGLISH) l_state = S_QRUSSIAN;
        else if (l_state == S_QRUSSIAN) l_state = S_ENGLISH;
        else if (l_state == S_COLEMAK) {
          layer_off(_CM);
          l_state = S_CRUSSIAN;
        }
        else if (l_state == S_CRUSSIAN) {
          layer_on(_CM);
          l_state = S_COLEMAK;
        }
        update_led_state_c();
      }
      break;
  }
  return 1;
}
