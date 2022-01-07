
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int row; int col; } ;
struct TYPE_5__ {TYPE_3__ key; scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
typedef TYPE_3__ keypos_t ;


 int set_nearest_led_to_max (int ,int ) ;

void rgb_matrix_record_key_press(keyrecord_t *record) {
  if (record->event.pressed) {
    keypos_t key = record->event.key;
    set_nearest_led_to_max(key.col, key.row);
  }
}
