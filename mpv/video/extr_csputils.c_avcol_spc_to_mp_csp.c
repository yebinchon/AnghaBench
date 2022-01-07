
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;
 int MP_CSP_AUTO ;
 int MP_CSP_BT_2020_C ;
 int MP_CSP_BT_2020_NC ;
 int MP_CSP_BT_601 ;
 int MP_CSP_BT_709 ;
 int MP_CSP_RGB ;
 int MP_CSP_SMPTE_240M ;
 int MP_CSP_YCGCO ;

enum mp_csp avcol_spc_to_mp_csp(int avcolorspace)
{
    switch (avcolorspace) {
    case 132: return MP_CSP_BT_709;
    case 133: return MP_CSP_BT_601;
    case 134: return MP_CSP_BT_2020_NC;
    case 135: return MP_CSP_BT_2020_C;
    case 130: return MP_CSP_BT_601;
    case 129: return MP_CSP_SMPTE_240M;
    case 131: return MP_CSP_RGB;
    case 128: return MP_CSP_YCGCO;
    default: return MP_CSP_AUTO;
    }
}
