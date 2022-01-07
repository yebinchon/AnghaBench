
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;







 int backlight_set (int) ;
 int biton32 (int ) ;
 int layer_state ;
 int old_layer ;

void matrix_scan_user(void) {
  uint8_t layer = biton32(layer_state);

  if (old_layer != layer) {
    switch (layer) {
      case 132:
      case 131:
        backlight_set(1);
      break;
      case 130:
      case 128:
      case 129:
        backlight_set(4);
      break;
    }
    old_layer = layer;
  }
}
