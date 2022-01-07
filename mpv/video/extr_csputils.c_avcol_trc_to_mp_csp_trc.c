
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp_trc { ____Placeholder_mp_csp_trc } mp_csp_trc ;
 int MP_CSP_TRC_AUTO ;
 int MP_CSP_TRC_BT_1886 ;
 int MP_CSP_TRC_GAMMA22 ;
 int MP_CSP_TRC_GAMMA28 ;
 int MP_CSP_TRC_HLG ;
 int MP_CSP_TRC_LINEAR ;
 int MP_CSP_TRC_PQ ;
 int MP_CSP_TRC_SRGB ;

enum mp_csp_trc avcol_trc_to_mp_csp_trc(int avtrc)
{
    switch (avtrc) {
    case 135:
    case 130:
    case 129:
    case 138:
    case 137:
    case 136: return MP_CSP_TRC_BT_1886;
    case 132: return MP_CSP_TRC_SRGB;
    case 131: return MP_CSP_TRC_LINEAR;
    case 134: return MP_CSP_TRC_GAMMA22;
    case 133: return MP_CSP_TRC_GAMMA28;
    case 128: return MP_CSP_TRC_PQ;
    case 139: return MP_CSP_TRC_HLG;
    default: return MP_CSP_TRC_AUTO;
    }
}
