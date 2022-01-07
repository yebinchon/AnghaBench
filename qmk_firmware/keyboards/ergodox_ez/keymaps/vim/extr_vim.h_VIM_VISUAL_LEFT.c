
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LEFT ;
 int KC_NO ;
 int SHIFT (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_VISUAL_LEFT(void) {
  print("\e[31mvh\e[0m");
  VIM_LEADER(KC_NO);
  SHIFT(KC_LEFT);
}
