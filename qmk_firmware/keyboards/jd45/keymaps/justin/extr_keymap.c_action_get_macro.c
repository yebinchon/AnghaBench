
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
 int ENT ;
 int I (int ) ;
 int const* MACRO (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int const* MACRO_NONE ;



 int T (int) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch (id)
    {
    case 130:
        return (record->event.pressed ? MACRO(I(0), T(1), T(2), T(3), T(4), T(5), T(6), T(7), T(8), T(ENT), END) : MACRO_NONE);
    case 129:
        return (record->event.pressed ? MACRO(I(0), T(1), T(2), T(3), T(4), T(5), T(6), T(7), T(8), T(ENT), END) : MACRO_NONE);
    case 128:
        return (record->event.pressed ? MACRO(I(0), T(1), T(2), T(3), T(4), T(5), T(6), T(7), T(8), T(ENT), END) : MACRO_NONE);
    }
    return MACRO_NONE;
}
