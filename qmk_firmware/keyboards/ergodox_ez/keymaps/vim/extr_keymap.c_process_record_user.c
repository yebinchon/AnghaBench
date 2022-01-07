
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;



 int INSERT_MODE ;
 int KC_LSFT ;

 int KC_RSFT ;
 int MOD_BIT (int ) ;

 int SEND_STRING (int ) ;
 int VERSION_STRING ;

 int VIM_APPEND () ;
 int VIM_APPEND_LINE () ;

 int VIM_BACK () ;

 int VIM_CHANGE_BACK () ;
 int VIM_CHANGE_DOWN () ;
 int VIM_CHANGE_END () ;
 int VIM_CHANGE_INNER_WORD () ;
 int VIM_CHANGE_LEFT () ;
 int VIM_CHANGE_LINE () ;
 int VIM_CHANGE_RIGHT () ;
 int VIM_CHANGE_UP () ;
 int VIM_CHANGE_WHOLE_LINE () ;
 int VIM_CHANGE_WORD () ;

 int VIM_CUT () ;

 int VIM_DELETE_BACK () ;
 int VIM_DELETE_DOWN () ;
 int VIM_DELETE_END () ;
 int VIM_DELETE_INNER_WORD () ;
 int VIM_DELETE_LEFT () ;
 int VIM_DELETE_LINE () ;
 int VIM_DELETE_RIGHT () ;
 int VIM_DELETE_UP () ;
 int VIM_DELETE_WHOLE_LINE () ;
 int VIM_DELETE_WORD () ;

 int VIM_DOWN () ;

 int VIM_END () ;



 int VIM_JOIN () ;


 int VIM_LEADER (int const) ;
 int VIM_LEFT () ;

 int VIM_OPEN () ;
 int VIM_OPEN_ABOVE () ;

 int VIM_PUT () ;
 int VIM_PUT_BEFORE () ;
 int VIM_QUEUE ;
 int VIM_RIGHT () ;

 int VIM_SUBSTITUTE () ;

 int VIM_UNDO () ;
 int VIM_UP () ;


 int VIM_VISUAL_BACK () ;
 int VIM_VISUAL_DOWN () ;
 int VIM_VISUAL_END () ;
 int VIM_VISUAL_INNER_WORD () ;
 int VIM_VISUAL_LEFT () ;
 int VIM_VISUAL_RIGHT () ;
 int VIM_VISUAL_UP () ;
 int VIM_VISUAL_WORD () ;

 int VIM_WORD () ;


 int VIM_YANK () ;
 int VIM_YANK_LINE () ;

 int eeconfig_init () ;
 TYPE_4__* keyboard_report ;
 int layer_on (int ) ;
 int rgblight_mode (int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  bool SHIFTED = (keyboard_report->mods & MOD_BIT(KC_LSFT)) |
                 (keyboard_report->mods & MOD_BIT(KC_RSFT));

  switch (keycode) {

    case 149:
      if (record->event.pressed) { SHIFTED ? VIM_APPEND_LINE() : VIM_APPEND(); }
      return 0;

    case 148:
      if (record->event.pressed) {
        switch(VIM_QUEUE) {
          case 151: VIM_BACK(); break;
          case 147: VIM_CHANGE_BACK(); break;
          case 145: VIM_DELETE_BACK(); break;
          case 133: VIM_VISUAL_BACK(); break;
        }
      }
      return 0;

    case 147:
      if (record->event.pressed) {
        switch(VIM_QUEUE) {
          case 151: SHIFTED ? VIM_CHANGE_LINE() : VIM_LEADER(147); break;
          case 147: VIM_CHANGE_WHOLE_LINE(); break;
        }
      }
      return 0;

    case 145:
      if (record->event.pressed) {
        switch(VIM_QUEUE) {
          case 151: SHIFTED ? VIM_DELETE_LINE() : VIM_LEADER(145); break;
          case 145: VIM_DELETE_WHOLE_LINE(); break;
        }
      }
      return 0;

    case 143:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case 151: VIM_END(); break;
          case 147: VIM_CHANGE_END(); break;
          case 145: VIM_DELETE_END(); break;
          case 133: VIM_VISUAL_END(); break;
        }
      }
      return 0;

    case 142:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case 151: VIM_LEFT(); break;
          case 147: VIM_CHANGE_LEFT(); break;
          case 145: VIM_DELETE_LEFT(); break;
          case 133: VIM_VISUAL_LEFT(); break;
        }
      }
      return 0;

    case 141:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case 151: layer_on(INSERT_MODE); break;
          case 147: VIM_LEADER(146); break;
          case 145: VIM_LEADER(144); break;
          case 133: VIM_LEADER(132); break;
        }
      }
      return 0;

    case 140:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case 151: SHIFTED ? VIM_JOIN() : VIM_DOWN(); break;
          case 147: VIM_CHANGE_DOWN(); break;
          case 145: VIM_DELETE_DOWN(); break;
          case 133: VIM_VISUAL_DOWN(); break;
        }
      }
      return 0;

    case 139:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case 151: VIM_UP(); break;
          case 147: VIM_CHANGE_UP(); break;
          case 145: VIM_DELETE_UP(); break;
          case 133: VIM_VISUAL_UP(); break;
        }
      }
      return 0;

    case 138:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case 151: VIM_RIGHT(); break;
          case 147: VIM_CHANGE_RIGHT(); break;
          case 145: VIM_DELETE_RIGHT(); break;
          case 133: VIM_VISUAL_RIGHT(); break;
        }
      }
      return 0;

    case 137:
      if (record->event.pressed) { SHIFTED ? VIM_OPEN_ABOVE() : VIM_OPEN(); }
      return 0;

    case 136:
      if (record->event.pressed) { SHIFTED ? VIM_PUT_BEFORE() : VIM_PUT(); }
      return 0;

    case 135:
      if (record->event.pressed) { SHIFTED ? VIM_CHANGE_WHOLE_LINE() : VIM_SUBSTITUTE(); }
      return 0;

    case 134:
      if (record->event.pressed) { VIM_UNDO(); }
      return 0;

    case 133:
      if (record->event.pressed) { VIM_LEADER(133); }
      return 0;

    case 131:
      if (record->event.pressed) {
        switch (VIM_QUEUE) {
          case 151: VIM_WORD(); break;
          case 147: VIM_CHANGE_WORD(); break;
          case 146: VIM_CHANGE_INNER_WORD(); break;
          case 145: VIM_DELETE_WORD(); break;
          case 144: VIM_DELETE_INNER_WORD(); break;
          case 133: VIM_VISUAL_WORD(); break;
          case 132: VIM_VISUAL_INNER_WORD(); break;
        }
      }
      return 0;

    case 130:
      if (record->event.pressed) { VIM_CUT(); }
      return 0;

    case 129:
      if (record->event.pressed) { SHIFTED ? VIM_YANK_LINE() : VIM_YANK(); }
      return 0;


    case 152:
      if (record->event.pressed) { eeconfig_init(); }
      return 0;
    case 128:
      if (record->event.pressed) { SEND_STRING(VERSION_STRING); }
      return 0;
    case 150:
      if (record->event.pressed) { rgblight_mode(1); }
      return 0;
  }
  return 1;
}
