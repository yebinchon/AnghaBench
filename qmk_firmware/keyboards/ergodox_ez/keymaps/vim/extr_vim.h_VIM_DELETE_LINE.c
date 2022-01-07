
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTRL (int ) ;
 int KC_K ;
 int KC_NO ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_DELETE_LINE(void) {
  print("\e[31mD\e[0m");
  VIM_LEADER(KC_NO);
  CTRL(KC_K);
}
