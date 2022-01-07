
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DELAY_TIME ;





 int RGBAnimation ;
 int _BASE ;
 int _FUNC ;
 int _NUM ;
 int _OPT ;
 int _SYM ;
 int delay_key_pressed ;
 scalar_t__ delay_key_stat ;
 int iota_gfx_task () ;
 int key_timer ;
 int layer_state ;
 int layer_state_old ;
 int led_ripple_effect (int,int,int) ;
 int register_delay_code (int ) ;
 int rgblight_setrgb (int,int,int) ;
 scalar_t__ timer_elapsed (int ) ;
 int unregister_delay_code () ;

void matrix_scan_user(void) {




  if(delay_key_stat && (timer_elapsed(key_timer) > DELAY_TIME)){
    register_delay_code(_BASE);
    if(!delay_key_pressed){
      unregister_delay_code();
    }
  }

  if(layer_state_old != layer_state){
    switch (layer_state) {
      case 132:
        break;
      case 129:
        register_delay_code(_OPT);
        break;
      case 130:
        register_delay_code(_NUM);
        break;
      case 128:
        register_delay_code(_SYM);
        break;
      case 131:
        register_delay_code(_FUNC);
        break;
    }
    layer_state_old = layer_state;
  }
}
