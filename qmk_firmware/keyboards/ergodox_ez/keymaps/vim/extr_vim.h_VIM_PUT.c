
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int KC_NO ;
 int KC_V ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_PUT(void) {
  print("\e[31mp\e[0m");
  VIM_LEADER(KC_NO);
  CMD(KC_V);
}
