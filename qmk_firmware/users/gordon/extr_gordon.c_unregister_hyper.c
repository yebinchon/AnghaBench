
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LALT ;
 int KC_LCTL ;
 int KC_LGUI ;
 int KC_LSFT ;
 int unregister_code (int ) ;

void unregister_hyper (void) {
  unregister_code (KC_LSFT);
  unregister_code (KC_LCTL);
  unregister_code (KC_LALT);
  unregister_code (KC_LGUI);
}
