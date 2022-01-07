
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int time; int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int TAPPING_TERM ;
 int TIMER_DIFF_16 (int ,int ) ;
 int _LOWER ;
 int _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int set_japanese_mode (int) ;
 int time_on_pressed ;

bool process_record_layer(uint16_t keycode, keyrecord_t *record) {
  return 1;
}
