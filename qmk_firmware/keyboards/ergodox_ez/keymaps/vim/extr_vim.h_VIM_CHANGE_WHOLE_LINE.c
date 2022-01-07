
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int KC_LEFT ;
 int KC_NO ;
 int VIM_CHANGE_LINE () ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_CHANGE_WHOLE_LINE(void) {
  print("\e[31mS\e[0m");
  VIM_LEADER(KC_NO);
  CMD(KC_LEFT);
  VIM_CHANGE_LINE();
}
