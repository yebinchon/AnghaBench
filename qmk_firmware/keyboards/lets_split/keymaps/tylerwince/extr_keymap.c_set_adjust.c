
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_sethsv_master (int,int,int) ;
 int rgblight_sethsv_slave (int,int,int) ;

void set_adjust(void){
  rgblight_sethsv_slave(35, 255, 255);
  rgblight_sethsv_master(255, 255, 255);
}
