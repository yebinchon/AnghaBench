
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_5__ {TYPE_2__ event; } ;
typedef TYPE_1__ keyrecord_t ;
typedef TYPE_2__ keyevent_t ;
struct TYPE_7__ {int swap_lalt_lgui; int swap_ralt_rgui; } ;


 int D (int ) ;
 int END ;
 int ENT ;
 int EQL ;
 int LALT ;
 int LBRC ;
 int LCTRL ;
 int LEFT ;
 int LGUI ;
 int LSFT ;
 int const* MACRO (int ,...) ;
 int const* MACRO_NONE ;
 int MINS ;
 int PSCR ;
 int RBRC ;
 int RIGHT ;
 int RSFT ;
 int T (int) ;
 int TAB ;
 int U (int ) ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 TYPE_3__ keymap_config ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{

  keyevent_t event = record->event;

  if (!eeconfig_is_enabled()) {
    eeconfig_init();
  }
  bool use_cmd = 1;


  if(keymap_config.swap_lalt_lgui == 1 && keymap_config.swap_ralt_rgui == 1) {
    use_cmd = 0;
  }
    switch(id) {
      case 137:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LGUI), T(LBRC), U(LGUI), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LALT), T(LEFT), U(LALT), END ) : MACRO(END));
          }
      case 135:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LGUI), T(RBRC), U(LGUI), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LALT), T(RIGHT), U(LALT), END ) : MACRO(END));
          }
      case 131:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LGUI), D(RSFT), T(LBRC), U(RSFT), U(LGUI), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LCTRL), D(RSFT), T(TAB), U(RSFT), U(LCTRL), END ) : MACRO(END));
          }
      case 133:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LGUI), D(RSFT), T(RBRC), U(RSFT), U(LGUI), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LCTRL), T(TAB), U(LCTRL), END ) : MACRO(END));
          }
      case 128:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LGUI), T(MINS), U(LGUI), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LCTRL), T(MINS), U(LCTRL), END ) : MACRO(END));
          }
          break;
      case 129:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LGUI), T(EQL), U(LGUI), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LCTRL), T(EQL), U(LCTRL), END ) : MACRO(END));
          }
          break;
      case 136:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LGUI), T(ENT), U(LGUI), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LCTRL), T(ENT), U(LCTRL), END ) : MACRO(END));
          }
      case 130:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LGUI), D(LCTRL), D(LSFT), T(4), U(LSFT), U(LGUI), U(LCTRL), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( T(PSCR) ) : MACRO(END));
          }
      case 134:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LCTRL), T(RIGHT), U(LCTRL), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LGUI), T(RIGHT), U(LGUI), END ) : MACRO(END));
          }
          break;
      case 132:

          if (use_cmd) {
              return (event.pressed ? MACRO( D(LCTRL), T(LEFT), U(LCTRL), END ) : MACRO(END));
          } else {
              return (event.pressed ? MACRO( D(LGUI), T(LEFT), U(LGUI), END ) : MACRO(END));
          }
        default:
            break;
    }
  return MACRO_NONE;
}
