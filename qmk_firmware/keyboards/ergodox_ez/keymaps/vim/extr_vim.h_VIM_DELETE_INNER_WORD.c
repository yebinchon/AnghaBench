
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_NO ;
 int VIM_BACK () ;
 int VIM_DELETE_END () ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_DELETE_INNER_WORD(void) {
  print("\e[31mw\e[0m");
  VIM_LEADER(KC_NO);
  VIM_BACK();
  VIM_DELETE_END();
}
