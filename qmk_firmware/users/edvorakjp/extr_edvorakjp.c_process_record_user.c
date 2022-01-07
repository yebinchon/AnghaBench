
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;


 scalar_t__ process_record_edvorakjp_config (int ,int *) ;
 scalar_t__ process_record_edvorakjp_swap_scln (int ,int *) ;
 scalar_t__ process_record_ime (int ,int *) ;
 scalar_t__ process_record_keymap (int ,int *) ;
 scalar_t__ process_record_layer (int ,int *) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  return process_record_keymap(keycode, record) && process_record_edvorakjp_swap_scln(keycode, record) && process_record_edvorakjp_config(keycode, record) && process_record_layer(keycode, record) && process_record_ime(keycode, record);




}
