
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int macro_t ;
typedef int keyrecord_t ;


 int A ;
 int C ;
 int E ;
 int END ;
 int ENT ;
 int L ;
 int M ;
 int const* MACRODOWN (int ,int ,int ,int ,int ,int ,int ,...) ;
 int const* MACRO_NONE ;
 int MINS ;
 int S ;
 int SPC ;
 int T (int) ;




const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{

    switch(id) {
    case 128:
 return MACRODOWN(T(1), T(2), T(3), T(MINS),
    T(1), T(2), T(3), T(MINS),
    T(1), T(2), T(3), T(4),
    END);
    case 130:
 return MACRODOWN(T(E), T(M), T(A), T(C), T(S), T(SPC), END);
    case 129:
 return MACRODOWN(T(L), T(S), T(SPC), T(MINS), T(L), T(ENT), END);
    };
    return MACRO_NONE;
}
