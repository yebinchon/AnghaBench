
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;


 int RGB_INIT ;
 int RGB_current_mode ;
 int TOG_STATUS ;
 TYPE_1__ rgblight_config ;
 int rgblight_mode (int ) ;

void matirx_scan_kb (void) {
  if (RGB_INIT) {}
  else {
    RGB_current_mode = rgblight_config.mode;
    RGB_INIT = 1;
        }
  rgblight_mode(RGB_current_mode);
  TOG_STATUS = 0;
}
