
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int INSERT_MODE ;
 int KC_ENTER ;
 int KC_LEFT ;
 int KC_NO ;
 int KC_UP ;
 int TAP (int ) ;
 int VIM_LEADER (int ) ;
 int layer_on (int ) ;
 int print (char*) ;

void VIM_OPEN_ABOVE(void) {
  print("\e[31mO\e[0m");
  VIM_LEADER(KC_NO);
  CMD(KC_LEFT);
  TAP(KC_ENTER);
  TAP(KC_UP);
  layer_on(INSERT_MODE);
}
