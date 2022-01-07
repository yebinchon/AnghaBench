
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_4__ {TYPE_2__ event; } ;
typedef TYPE_1__ keyrecord_t ;
typedef TYPE_2__ keyevent_t ;


 int D (int ) ;
 int END ;
 int LEFT ;
 int LSFT ;
 int const* MACRO (int ,int ,int ,int ,int ,...) ;
 int const* MACRO_NONE ;



 int P ;
 int SPC ;
 int T (int) ;
 int U (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    keyevent_t event = record->event;
    switch (id) {
        case 130:

            return event.pressed ?
                MACRO( D(LSFT), T(P), T(9), T(SPC), T(SPC), T(0), T(P), U(LSFT), T(LEFT), T(LEFT), T(LEFT), END ) :
                MACRO_NONE;
        case 129:

            return event.pressed ?
                MACRO( D(LSFT), T(9), T(P), T(SPC), T(SPC), T(P), T(0), U(LSFT), T(LEFT), T(LEFT), T(LEFT), END ) :
                MACRO_NONE;
        case 128:

            return event.pressed ?
                MACRO( D(LSFT), T(P), T(0), U(LSFT), END ) :
                MACRO_NONE;
    }
    return MACRO_NONE;
}
