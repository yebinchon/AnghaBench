
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





 int SEND_STRING (int ) ;
 int SS_LALT (int ) ;
 int SS_LGUI (int ) ;
 int SS_TAP (int ) ;
 int X_LEFT ;
 int X_PSCREEN ;
 int X_RIGHT ;

bool try_handle_macro(uint16_t keycode, keyrecord_t *record) {
    switch (keycode)
    {
        case 130:
            if (record->event.pressed)
                SEND_STRING(SS_LGUI(SS_LALT(SS_TAP(X_LEFT))));
            return 1;
        case 129:
            if (record->event.pressed)
                SEND_STRING(SS_LGUI(SS_LALT(SS_TAP(X_RIGHT))));
            return 1;
        case 128:
            if (record->event.pressed)
                SEND_STRING(SS_LALT(SS_TAP(X_PSCREEN)));
            return 1;

        default:
            return 0;
    }
}
