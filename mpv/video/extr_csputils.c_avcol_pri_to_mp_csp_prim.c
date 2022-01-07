
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp_prim { ____Placeholder_mp_csp_prim } mp_csp_prim ;
 int MP_CSP_PRIM_AUTO ;
 int MP_CSP_PRIM_BT_2020 ;
 int MP_CSP_PRIM_BT_470M ;
 int MP_CSP_PRIM_BT_601_525 ;
 int MP_CSP_PRIM_BT_601_625 ;
 int MP_CSP_PRIM_BT_709 ;

enum mp_csp_prim avcol_pri_to_mp_csp_prim(int avpri)
{
    switch (avpri) {
    case 128:
    case 129: return MP_CSP_PRIM_BT_601_525;
    case 132: return MP_CSP_PRIM_BT_601_625;
    case 130: return MP_CSP_PRIM_BT_709;
    case 133: return MP_CSP_PRIM_BT_2020;
    case 131: return MP_CSP_PRIM_BT_470M;
    default: return MP_CSP_PRIM_AUTO;
    }
}
