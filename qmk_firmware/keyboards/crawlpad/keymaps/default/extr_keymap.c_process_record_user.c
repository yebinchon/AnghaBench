
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






 int PORTB ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
  case 131:
    if (record->event.pressed) {
      PORTB |= (1 << 4);
    } else {
      PORTB &= ~(1 << 4);
    }
    return 0;
  case 130:
    if (record->event.pressed) {
      PORTB |= (1 << 5);
    } else {
      PORTB &= ~(1 << 5);
    }
    return 0;
  case 129:
    if (record->event.pressed) {
      PORTB |= (1 << 6);
    } else {
      PORTB &= ~(1 << 6);
    }
    return 0;
  case 128:
    if (record->event.pressed) {
      PORTB |= (1 << 7);
    } else {
      PORTB &= ~(1 << 7);
    }
    return 0;
  }
  return 1;
}
