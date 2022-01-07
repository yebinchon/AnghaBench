
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LSFT ;
 int KC_NONUS_BSLASH ;
 int register_code (int ) ;
 int send_key (int ) ;
 int unregister_code (int ) ;

void send_larger_than() {
  register_code(KC_LSFT);
  send_key(KC_NONUS_BSLASH);
  unregister_code(KC_LSFT);
}
