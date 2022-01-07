
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int const APP ;
 int END ;
 int const ESC ;

 int LONGPRESS_DELAY ;
 int const* MACRO (int ,int ) ;
 int const* MACRO_NONE ;
 int const MNXT ;
 int const MPLY ;
 int T (int const) ;


 int key_timer ;
 int timer_elapsed (int ) ;
 int timer_read () ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{

  switch(id) {


  case 128:
    if (record->event.pressed) {
      key_timer = timer_read();
    } else {
      if (timer_elapsed(key_timer) > LONGPRESS_DELAY) {
        return MACRO(T(MPLY), END);
      } else {
        return MACRO(T(128), END);
      }
    }
    break;


  case 129:
    if (record->event.pressed) {
      key_timer = timer_read();
    } else {
      if (timer_elapsed(key_timer) > LONGPRESS_DELAY) {
        return MACRO(T(MNXT), END);
      } else {
        return MACRO(T(129), END);
      }
    }
    break;


  case 130:
    if (record->event.pressed) {
      key_timer = timer_read();
    } else {
      if (timer_elapsed(key_timer) > LONGPRESS_DELAY) {
        return MACRO(T(APP), END);
      } else {
        return MACRO(T(ESC), END);
      }
    }
    break;
  }
  return MACRO_NONE;
}
