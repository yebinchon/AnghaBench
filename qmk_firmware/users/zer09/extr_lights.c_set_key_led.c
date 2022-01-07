
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int row; int col; } ;
struct TYPE_6__ {scalar_t__ pressed; TYPE_1__ key; } ;
struct TYPE_7__ {TYPE_2__ event; } ;
typedef TYPE_3__ keyrecord_t ;


 int SET_LED_RGB (int ,int ,int ,int ,int) ;
 int ** _LC ;
 int * _PC ;
 int* active_key_pos ;
 int led_dim ;

void set_key_led(keyrecord_t *record, uint8_t lyr) {
  static uint8_t base = 5;

  uint8_t r = record->event.key.row;
  uint8_t c = record->event.key.col;
  uint8_t pos;



  if (r < 5) {
    pos = r % 2 == 0 ? r * base + c : r * base + (base - (c + 1));
  } else {
    pos = r % 2 == 0 ? r * base + (base - (c + 1)) : r * base + c;
  }

  if (record->event.pressed) {
    active_key_pos[pos] = 1;
    SET_LED_RGB(_PC[0], _PC[1], _PC[2], led_dim, pos);
  } else {
    active_key_pos[pos] = 0;
    SET_LED_RGB(_LC[lyr][0], _LC[lyr][1], _LC[lyr][2], led_dim, pos);
  }
}
