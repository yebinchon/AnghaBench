
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


 int D ;
 int E ;
 int END ;
 int H ;
 int I (int) ;

 int L ;
 int const* MACRO (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int const* MACRO_NONE ;
 int O ;
 int R ;
 int SPACE ;
 int T (int ) ;
 int W ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    if (!eeconfig_is_enabled()) {
      eeconfig_init();
    }

    switch (id) {
      case 128:
        if (record->event.pressed){
          return MACRO (I(1), T(H),T(E),T(L), T(L), T(O), T(SPACE), T(W), T(O), T(R), T(L), T(D), END);
        }
    }

    return MACRO_NONE;
}
