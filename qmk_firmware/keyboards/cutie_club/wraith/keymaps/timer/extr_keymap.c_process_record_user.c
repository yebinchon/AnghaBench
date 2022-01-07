
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;


 int LAYER_SWITCH ;
 int LAYER_TIMEOUT ;

 int layer_on (int ) ;
 int layer_time_remaining ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:

   layer_time_remaining = LAYER_TIMEOUT;

   layer_on(LAYER_SWITCH);
    break;
  }
  return 1;
}
