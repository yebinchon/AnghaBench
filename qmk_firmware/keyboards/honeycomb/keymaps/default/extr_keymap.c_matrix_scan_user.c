
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_VOLD ;
 int KC_VOLU ;
 scalar_t__ encoderValue ;
 int tap_code (int ) ;

void matrix_scan_user(void) {
 while (encoderValue < 0){
  tap_code(KC_VOLD);
  encoderValue++;
 }
 while (encoderValue > 0){
  tap_code(KC_VOLU);
  encoderValue--;
 }
}
