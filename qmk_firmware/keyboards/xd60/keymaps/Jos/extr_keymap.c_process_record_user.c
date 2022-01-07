
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_7 ;
 int KC_8 ;
 int KC_APP ;
 int KC_BSLS ;

 int KC_CAPS ;
 int del_blocked ;
 int register_code (int const) ;
 int special_mods (int ,TYPE_2__*,int const) ;
 int unregister_code (int const) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode){
    default: return 1;
  }
}
