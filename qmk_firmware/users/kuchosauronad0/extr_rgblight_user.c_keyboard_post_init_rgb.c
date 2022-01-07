
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int enable; int hue; } ;
struct TYPE_3__ {scalar_t__ rgb_layer_change; } ;


 int RGBLIGHT_MODE_STATIC_LIGHT ;
 int layer_state ;
 int layer_state_set_user (int ) ;
 TYPE_2__ rgblight_config ;
 int rgblight_disable_noeeprom () ;
 int rgblight_enable_noeeprom () ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom (int,int,int) ;
 TYPE_1__ userspace_config ;
 int wait_ms (int) ;

void keyboard_post_init_rgb(void) {
  layer_state_set_user(layer_state);
}
