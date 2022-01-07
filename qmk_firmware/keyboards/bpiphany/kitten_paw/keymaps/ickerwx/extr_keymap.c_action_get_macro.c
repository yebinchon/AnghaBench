
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



 int D (int ) ;
 int END ;
 int const EQL ;

 int LSFT ;
 int const* MACRO (int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int RALT ;
 int const SPC ;
 int T (int const) ;
 int U (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{

      switch(id) {
        case 128:
            return (record->event.pressed ?
                    MACRO( D(LSFT), T(EQL), U(RALT), T(SPC), END) :
                    MACRO_NONE );
        case 129:
            return (record->event.pressed ?
                    MACRO( T(128), T(SPC), END ) :
                    MACRO_NONE );
      }
    return MACRO_NONE;
}
