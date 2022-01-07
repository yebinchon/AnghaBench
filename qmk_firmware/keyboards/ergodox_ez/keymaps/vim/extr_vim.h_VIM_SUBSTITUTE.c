
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int INSERT_MODE ;
 int KC_NO ;
 int KC_RIGHT ;
 int KC_X ;
 int SHIFT (int ) ;
 int VIM_LEADER (int ) ;
 int layer_on (int ) ;
 int print (char*) ;

void VIM_SUBSTITUTE(void) {
  print("\e[31ms\e[0m");
  VIM_LEADER(KC_NO);
  SHIFT(KC_RIGHT);
  CMD(KC_X);
  layer_on(INSERT_MODE);
}
