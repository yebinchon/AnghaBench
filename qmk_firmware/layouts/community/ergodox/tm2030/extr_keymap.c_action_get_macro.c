
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


 int END ;
 int FNLR ;
 int I (int) ;
 int const* MACRO (int ,int ,int ,int ) ;
 int const* MACRO_NONE ;


 int NUMR ;
 int P0 ;
 int T (int ) ;
 int layer_invert (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{

    switch(id) {
        case 129:
            if (record->event.pressed) {
              return MACRO( I(25), T(P0), T(P0), END );
            }
        break;
        case 128:
            layer_invert(NUMR);
            layer_invert(FNLR);
            break;
    }
    return MACRO_NONE;
}
