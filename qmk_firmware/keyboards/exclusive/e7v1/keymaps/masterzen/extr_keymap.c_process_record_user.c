
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mode; } ;


 unsigned long BASE ;


 unsigned long OSX ;

 int mode ;
 int persistent_default_layer_set (unsigned long) ;
 TYPE_3__ rgblight_config ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
  switch (keycode)
  {

  case 130:
    if (record->event.pressed)
    {
      persistent_default_layer_set(1UL << BASE);
    }
    return 0;
    break;
  case 129:
    if (record->event.pressed)
    {
      persistent_default_layer_set(1UL << OSX);
    }
    return 0;
    break;
  case 128:


    if (record->event.pressed)
    {
      rgblight_mode(mode);
      rgblight_step();
      mode = rgblight_config.mode;
    }
    return 0;
    break;
  }
  return 1;
}
