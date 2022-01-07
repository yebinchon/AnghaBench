
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_sethsv_noeeprom (int,int ,int) ;

void set_qwerty(void){
  rgblight_sethsv_noeeprom(255, 0, 160);
}
