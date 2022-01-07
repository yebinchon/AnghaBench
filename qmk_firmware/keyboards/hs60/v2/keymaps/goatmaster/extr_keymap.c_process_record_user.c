
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



 int PSTR (char*) ;
 int send_string_with_delay_P (int ,int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
  case 128:
    if (!record->event.pressed) {
      send_string_with_delay_P(PSTR("example@email.com"), 10);
    }
  break;
  }
  return 1;
}
