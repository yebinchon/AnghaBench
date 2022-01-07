
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int set_enable_kc_lang (int) ;

bool process_record_edvorakjp_config(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
    case 128:
      if (record->event.pressed) {
        set_enable_kc_lang(keycode == 129);
      }
      return 0;
  }
  return 1;
}
