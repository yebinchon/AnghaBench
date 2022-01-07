
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


 int RYS_STOKEN1 ;
 int RYS_STOKEN2 ;
 int RYS_STOKEN3 ;
 int RYS_STOKEN4 ;
 int SEND_STRING (int ) ;





bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 131:
      if (record->event.pressed) {
        SEND_STRING(RYS_STOKEN1);
      }
      break;
    case 130:
      if (record->event.pressed) {
        SEND_STRING(RYS_STOKEN2);
      }
      break;
    case 129:
      if (record->event.pressed) {
        SEND_STRING(RYS_STOKEN3);
      }
      break;
    case 128:
      if (record->event.pressed) {
        SEND_STRING(RYS_STOKEN4);
      }
      break;
  }
  return 1;
}
