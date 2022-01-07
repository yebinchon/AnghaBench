
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_F7 ;
 int KC_LALT ;
 int unregister_code (int ) ;

void unregister_alt_f7 (void) {
  unregister_code (KC_LALT);
  unregister_code (KC_F7);
}
