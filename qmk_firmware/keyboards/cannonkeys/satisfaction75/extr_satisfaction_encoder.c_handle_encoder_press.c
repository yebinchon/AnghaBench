
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int breathing; } ;


 int ENC_CUSTOM_PRESS ;
 int KC_BTN3 ;
 int KC_MEDIA_PLAY_PAUSE ;
 int KC_MUTE ;
 int breathing_disable () ;
 int breathing_enable () ;
 int encoder_mode ;
 TYPE_1__ kb_backlight_config ;
 int retrieve_custom_encoder_config (int,int ) ;
 int time_config_idx ;

uint16_t handle_encoder_press(){
  uint16_t mapped_code = 0;
  switch(encoder_mode){
    case 128:
      mapped_code = KC_MUTE;
      break;
    default:
    case 130:
      mapped_code = KC_MEDIA_PLAY_PAUSE;
      break;
    case 129:
      mapped_code = KC_BTN3;
      break;
    case 136:

      kb_backlight_config.breathing = !kb_backlight_config.breathing;
      if(!kb_backlight_config.breathing){
        breathing_disable();
      } else{
        breathing_enable();
      }
      break;
    case 134:
      time_config_idx = (time_config_idx + 1) % 5;
    case 135:
      break;
  }
  return mapped_code;
}
