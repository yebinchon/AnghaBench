
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mode; } ;


 int RGB_INIT ;
 int RGB_current_mode ;
 int TOG_STATUS ;



 int biton32 (int ) ;
 int layer_state ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode (int) ;

void matrix_scan_user(void) {
   uint8_t layer = biton32(layer_state);
   switch (layer) {
     case 129:
         if (RGB_INIT) {} else {
           RGB_current_mode = rgblight_config.mode;
           RGB_INIT = 1;
         }
         if (TOG_STATUS) {
         } else {
           TOG_STATUS = !TOG_STATUS;
           rgblight_mode(29);
         }
         break;
     case 130:
         if (RGB_INIT) {} else {
           RGB_current_mode = rgblight_config.mode;
           RGB_INIT = 1;
         }
         if (TOG_STATUS) {
         } else {
           TOG_STATUS = !TOG_STATUS;
           rgblight_mode(29);
         }
         break;
     case 128:
         if (RGB_INIT) {} else {
           RGB_current_mode = rgblight_config.mode;
           RGB_INIT = 1;
         }
         rgblight_mode(RGB_current_mode);
         TOG_STATUS = 0;
         break;
   }
 }
