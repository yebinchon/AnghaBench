
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int INSERT_MODE ;
 int KC_ENTER ;
 int KC_NO ;
 int KC_RIGHT ;
 int TAP (int ) ;
 int VIM_LEADER (int ) ;
 int layer_on (int ) ;
 int print (char*) ;

void VIM_OPEN(void) {
  print("\e[31mo\e[0m");
  VIM_LEADER(KC_NO);
  CMD(KC_RIGHT);
  TAP(KC_ENTER);
  layer_on(INSERT_MODE);
}
