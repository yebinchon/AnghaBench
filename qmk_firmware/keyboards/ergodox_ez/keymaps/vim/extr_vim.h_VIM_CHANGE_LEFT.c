
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSERT_MODE ;
 int KC_NO ;
 int VIM_DELETE_LEFT () ;
 int VIM_LEADER (int ) ;
 int layer_on (int ) ;
 int print (char*) ;

void VIM_CHANGE_LEFT(void) {
  print("\e[31mch\e[0m");
  VIM_LEADER(KC_NO);
  VIM_DELETE_LEFT();
  layer_on(INSERT_MODE);
}
