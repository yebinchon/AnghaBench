
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSV_BLUE ;
 int HSV_CORAL ;
 int HSV_MAGENTA ;
 int HSV_WHITE ;
 scalar_t__ IS_HOST_LED_ON (int ) ;
 int USB_LED_CAPS_LOCK ;



 int biton32 (int ) ;
 int layer_state ;
 int rgblight_sethsv_noeeprom (int ) ;
 int rgblight_sethsv_range (int ,int,int) ;

void update_led(void) {
    switch (biton32(layer_state)) {
      case 130:
      rgblight_sethsv_noeeprom(HSV_BLUE);
      break;
    case 129:
      rgblight_sethsv_noeeprom(HSV_CORAL);
      break;
    case 128:
      rgblight_sethsv_noeeprom(HSV_MAGENTA);
      break;
    }
  if (IS_HOST_LED_ON(USB_LED_CAPS_LOCK)) {
    rgblight_sethsv_range(HSV_WHITE,0,4);
    rgblight_sethsv_range(HSV_WHITE,12,16);
  }
}
