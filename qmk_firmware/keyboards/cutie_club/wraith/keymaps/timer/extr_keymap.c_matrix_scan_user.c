
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B0 ;
 int GET_FLASH_PERIOD ;
 scalar_t__ IS_LAYER_ON (int ) ;
 int LAYER_SWITCH ;
 int TIMEOUT_WARNING ;
 int layer_off (int ) ;
 int layer_time_remaining ;
 scalar_t__ prev_loop_time ;
 scalar_t__ timer_read () ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void matrix_scan_user(void) {
  layer_time_remaining -= timer_read()-prev_loop_time;
  prev_loop_time = timer_read();

  if (layer_time_remaining <= 0) {

   layer_off(LAYER_SWITCH);
  }


  if (IS_LAYER_ON(LAYER_SWITCH)) {
    if (layer_time_remaining <= TIMEOUT_WARNING) {
      if ((int)(layer_time_remaining/GET_FLASH_PERIOD % 2 == 0)) {

      writePinLow(B0);
    } else {
      writePinHigh(B0);
    }
    } else {
      writePinLow(B0);
    }
  } else {
    writePinHigh(B0);
  }
}
