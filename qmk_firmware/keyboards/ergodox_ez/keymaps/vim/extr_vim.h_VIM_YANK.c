
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int KC_C ;
 int KC_NO ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_YANK(void) {
  print("\e[31my\e[0m");
  VIM_LEADER(KC_NO);
  CMD(KC_C);
}
