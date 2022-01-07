
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp_prim { ____Placeholder_mp_csp_prim } mp_csp_prim ;


 int MP_CSP_PRIM_BT_601_525 ;
 int MP_CSP_PRIM_BT_601_625 ;
 int MP_CSP_PRIM_BT_709 ;

enum mp_csp_prim mp_csp_guess_primaries(int width, int height)
{

    if (width >= 1280 || height > 576)
        return MP_CSP_PRIM_BT_709;

    switch (height) {
    case 576:
        return MP_CSP_PRIM_BT_601_625;

    case 480:
    case 486:
        return MP_CSP_PRIM_BT_601_525;

    default:
        return MP_CSP_PRIM_BT_709;
    }
}
