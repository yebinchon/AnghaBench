
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; } ;


 scalar_t__ IS_LAYER_ON (int ) ;
 TYPE_1__ RGB_current_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int rgblight_mode_noeeprom (int ) ;

void update_tri_layer_RGB(uint8_t layer1, uint8_t layer2, uint8_t layer3) {
  if (IS_LAYER_ON(layer1) && IS_LAYER_ON(layer2)) {



    layer_on(layer3);
  } else {
    layer_off(layer3);
  }
}
