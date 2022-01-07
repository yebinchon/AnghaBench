
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int mode; int val; int enable; int raw; } ;
typedef TYPE_1__ rgblight_config_t ;
struct TYPE_4__ {int octave; } ;


 int LAYER_BASE ;
 int LAYER_CONTROL ;
 int LAYER_FUNCTION ;
 int LAYER_MEDIA ;
 int LAYER_MOUSE ;
 int _CL ;
 int _FL ;
 int _ME ;
 int _MI ;
 int _ML ;
 int clueboard_set_led (int ,int ) ;
 int clueboard_set_midi_led (int ,int ) ;
 int eeconfig_read_rgblight () ;
 int layer_state ;
 TYPE_2__ midi_config ;

void matrix_scan_user(void) {
    rgblight_config_t rgblight_config;
    rgblight_config.raw = eeconfig_read_rgblight();

    if (!rgblight_config.enable || rgblight_config.mode != 1) { return; }

    uint32_t layer = layer_state;
    uint8_t val = rgblight_config.val;

    if (layer & (1<<_FL)) {
      if (layer & (1<<_ME)) {
        clueboard_set_led(LAYER_MEDIA, val);
      } else if (layer & (1<<_CL)) {
        clueboard_set_led(LAYER_CONTROL, val);
      } else {
        clueboard_set_led(LAYER_FUNCTION, val);
      }
    } else if (layer & (1<<_ML)) {
      clueboard_set_led(LAYER_MOUSE, val);




    } else {
        clueboard_set_led(LAYER_BASE, val);
    }
}
