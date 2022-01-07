
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



 int AMPR ;
 int ASTR ;
 int AT ;
 int BSLASH ;
 int BSLS ;
 int BSPACE ;
 int CASE_US (int ,int ,int ) ;
 int CIRC ;
 int CSTM_0 ;
 int CSTM_1 ;
 int CSTM_2 ;
 int CSTM_3 ;
 int CSTM_4 ;
 int CSTM_5 ;
 int CSTM_6 ;
 int CSTM_7 ;
 int CSTM_8 ;
 int CSTM_9 ;
 int DEL ;
 int DELETE ;
 int DLR ;
 int EQL ;
 int EQUAL ;
 int EXLM ;
 int GRAVE ;
 int GRV ;
 int HASH ;
 int INT1 ;
 int INT3 ;

 int JP_LAYOUT ;
 int KEY (int) ;
 int KEY_SHIFT (int) ;
 int KEY_UPSHIFT (int) ;
 int LAYOUT_STATUS ;
 int LBRACKET ;
 int LBRC ;
 int LCBR ;

 int LPRN ;
 int MINS ;
 int MINUS ;
 int NONUS_HASH ;
 int PERC ;
 int PIPE ;
 int PLUS ;
 int QUOT ;
 int QUOTE ;

 int RBRACKET ;
 int RBRC ;
 int RCBR ;
 int RPRN ;
 int SCLN ;
 int SCOLON ;
 int SEND_STRING (int ) ;

 int SHIFT_DU (int ,int ) ;
 int SHIFT_PRESSED ;
 int SS_DOWN (int ) ;
 int SS_UP (int ) ;
 int TILD ;
 int UNDS ;

 int US_LAYOUT ;
 int X_LSHIFT ;
 int _ADJUST ;
 int _LOWER ;
 int _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        CASE_US(CSTM_0, KEY(0), SHIFT_DU(KEY_SHIFT(9), KEY(0)));
        CASE_US(CSTM_1, KEY(1), KEY(1));
        CASE_US(CSTM_2, KEY(2), SHIFT_DU(KEY_UPSHIFT(LBRACKET), KEY(2)));
        CASE_US(CSTM_3, KEY(3), KEY(3));
        CASE_US(CSTM_4, KEY(4), KEY(4));
        CASE_US(CSTM_5, KEY(5), KEY(5));
        CASE_US(CSTM_6, KEY(6), SHIFT_DU(KEY_UPSHIFT(EQUAL), KEY(6)));
        CASE_US(CSTM_7, KEY(7), SHIFT_DU(KEY_SHIFT(6), KEY(7)));
        CASE_US(CSTM_8, KEY(8), SHIFT_DU(KEY_SHIFT(QUOTE), KEY(8)));
        CASE_US(CSTM_9, KEY(9), SHIFT_DU(KEY_SHIFT(8), KEY(9)));
        CASE_US(DEL, KEY(DELETE), KEY_UPSHIFT(BSPACE));
        CASE_US(TILD, KEY_SHIFT(GRAVE), KEY_SHIFT(EQUAL));
        CASE_US(EXLM, KEY_SHIFT(1), KEY_SHIFT(1));
        CASE_US(AT, KEY_SHIFT(2), KEY(LBRACKET));
        CASE_US(HASH, KEY_SHIFT(3), KEY_SHIFT(3));
        CASE_US(DLR, KEY_SHIFT(4), KEY_SHIFT(4));
        CASE_US(PERC, KEY_SHIFT(5), KEY_SHIFT(5));
        CASE_US(CIRC, KEY_SHIFT(6), KEY(EQUAL));
        CASE_US(AMPR, KEY_SHIFT(7), KEY_SHIFT(6));
        CASE_US(ASTR, KEY_SHIFT(8), KEY_SHIFT(QUOTE));
        CASE_US(LPRN, KEY_SHIFT(9), KEY_SHIFT(8));
        CASE_US(RPRN, KEY_SHIFT(0), KEY_SHIFT(9));
        CASE_US(LBRC, KEY(LBRACKET), SHIFT_DU(KEY_SHIFT(RBRACKET), KEY(RBRACKET)));
        CASE_US(RBRC, KEY(RBRACKET), SHIFT_DU(KEY_SHIFT(NONUS_HASH), KEY(NONUS_HASH)));
        CASE_US(LCBR, KEY_SHIFT(LBRACKET), KEY_SHIFT(RBRACKET));
        CASE_US(RCBR, KEY_SHIFT(RBRACKET), KEY_SHIFT(NONUS_HASH));
        CASE_US(GRV, KEY(GRAVE), SHIFT_DU(KEY_SHIFT(EQUAL), KEY_SHIFT(LBRACKET)));
        CASE_US(BSLS, KEY(BSLASH), SHIFT_DU(KEY_SHIFT(INT3), KEY(INT3)));
        CASE_US(PIPE, KEY_SHIFT(BSLASH), KEY_SHIFT(INT3));
        CASE_US(MINS, KEY(MINUS), SHIFT_DU(KEY_SHIFT(INT1), KEY(MINUS)));
        CASE_US(UNDS, KEY_SHIFT(MINUS), KEY_SHIFT(INT1));
        CASE_US(EQL, KEY(EQUAL), SHIFT_DU(KEY_SHIFT(SCOLON), KEY_SHIFT(MINUS)));
        CASE_US(PLUS, KEY_SHIFT(EQUAL), KEY_SHIFT(SCOLON));
        CASE_US(SCLN, KEY(SCOLON), SHIFT_DU(KEY_UPSHIFT(QUOTE), KEY(SCOLON)));
        CASE_US(QUOT, KEY(QUOTE), SHIFT_DU(KEY_SHIFT(2), KEY_SHIFT(7)));
        case 132:
            if (record->event.pressed) {
                LAYOUT_STATUS = JP_LAYOUT;
            }
            return 0;
            break;
        case 128:
            if (record->event.pressed) {
                LAYOUT_STATUS = US_LAYOUT;
            }
            return 0;
            break;
        case 129:
            if (record->event.pressed) {
                SEND_STRING(SS_DOWN(X_LSHIFT));
                SHIFT_PRESSED = 1;
            } else {
                SEND_STRING(SS_UP(X_LSHIFT));
                SHIFT_PRESSED = 0;
            }
            return 0;
            break;
        case 131:
            if (record->event.pressed) {
                layer_on(_LOWER);
            } else {
                layer_off(_LOWER);
            }
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
            return 0;
            break;
        case 130:
            if (record->event.pressed) {
                layer_on(_RAISE);
            } else {
                layer_off(_RAISE);
            }
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
            return 0;
            break;
        case 133:
            if (record->event.pressed) {
                layer_on(_ADJUST);
            } else {
                layer_off(_ADJUST);
            }
            return 0;
            break;
    }
    return 1;
}
