
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_DOWN ;
 int KC_NO ;
 int TAP (int ) ;
 int VIM_DELETE_LINE () ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_DELETE_DOWN(void) {
  print("\e[31mj\e[0m");
  VIM_LEADER(KC_NO);
  TAP(KC_DOWN);
  VIM_DELETE_LINE();
}
