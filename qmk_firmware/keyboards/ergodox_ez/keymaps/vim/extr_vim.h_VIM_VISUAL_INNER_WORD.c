
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_NO ;
 int VIM_BACK () ;
 int VIM_LEADER (int ) ;
 int VIM_VISUAL_END () ;
 int print (char*) ;

void VIM_VISUAL_INNER_WORD(void) {
  print("\e[31mviw\e[0m");
  VIM_LEADER(KC_NO);
  VIM_BACK();
  VIM_VISUAL_END();
}
