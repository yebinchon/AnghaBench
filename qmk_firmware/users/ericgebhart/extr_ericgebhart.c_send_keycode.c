
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KC_LSFT ;
 int KC_RSFT ;
 int MOD_BIT (int ) ;
 int SHIFTED_KEY (int) ;
 int SHIFTED_MODS (int) ;
 int UNSHIFTED_KEY (int) ;
 int UNSHIFTED_MODS (int) ;
 int clear_mods () ;
 int get_mods () ;
 int register_code (int ) ;
 int register_mods (int) ;
 int unregister_code (int ) ;
 int unregister_mods (int) ;

void send_keycode(uint8_t kc){
  uint8_t tmp_mods = get_mods();
  bool is_shifted = ( tmp_mods & (MOD_BIT(KC_LSFT)|MOD_BIT(KC_RSFT)) );


  unregister_mods((MOD_BIT(KC_LSFT)|MOD_BIT(KC_RSFT)));
  if(is_shifted){
    register_mods(SHIFTED_MODS(kc));
    register_code(SHIFTED_KEY(kc));
    unregister_code(SHIFTED_KEY(kc));
    unregister_mods(SHIFTED_MODS(kc));
  } else{
    register_mods(UNSHIFTED_MODS(kc));
    register_code(UNSHIFTED_KEY(kc));
    unregister_code(UNSHIFTED_KEY(kc));
    unregister_mods(UNSHIFTED_MODS(kc));
  }
  clear_mods();
  register_mods(tmp_mods);
}
