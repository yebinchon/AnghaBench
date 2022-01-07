
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;


 scalar_t__ process_record_cdeq (int ,int *) ;
 scalar_t__ process_record_layout (int ,int *) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  return process_record_cdeq(keycode, record) && process_record_layout(keycode, record);


}
