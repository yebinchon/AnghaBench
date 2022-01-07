
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int enable; int level; } ;


 int BACKLIGHT_LEVELS ;
 int ENC_CUSTOM_CW ;
 int KC_BRIGHTNESS_UP ;
 int KC_MEDIA_NEXT_TRACK ;
 int KC_VOLU ;
 int KC_WH_D ;
 int backlight_set (int ) ;
 int encoder_mode ;
 TYPE_1__ kb_backlight_config ;
 int queue_for_send ;
 int retrieve_custom_encoder_config (int,int ) ;
 int update_time_config (int) ;

uint16_t handle_encoder_clockwise(){
  uint16_t mapped_code = 0;
  switch(encoder_mode){
    default:
    case 128:
      mapped_code = KC_VOLU;
      break;
    case 130:
      mapped_code = KC_MEDIA_NEXT_TRACK;
      break;
    case 129:
      mapped_code = KC_WH_D;
      break;
    case 136:
      kb_backlight_config.level = kb_backlight_config.level + 1;
      if(kb_backlight_config.level > BACKLIGHT_LEVELS){
        kb_backlight_config.level = BACKLIGHT_LEVELS;
      }
      backlight_set(kb_backlight_config.level);
      if (kb_backlight_config.level != 0){
        kb_backlight_config.enable = 1;
      }
      break;
    case 135:
      mapped_code = KC_BRIGHTNESS_UP;
      break;
    case 134:
      update_time_config(1);
      queue_for_send = 1;
      break;
  }
  return mapped_code;
}
