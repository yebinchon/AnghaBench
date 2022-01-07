
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp_trc { ____Placeholder_mp_csp_trc } mp_csp_trc ;


 int AVCOL_TRC_ARIB_STD_B67 ;
 int AVCOL_TRC_BT709 ;
 int AVCOL_TRC_GAMMA22 ;
 int AVCOL_TRC_GAMMA28 ;
 int AVCOL_TRC_IEC61966_2_1 ;
 int AVCOL_TRC_LINEAR ;
 int AVCOL_TRC_SMPTEST2084 ;
 int AVCOL_TRC_UNSPECIFIED ;
int mp_csp_trc_to_avcol_trc(enum mp_csp_trc trc)
{
    switch (trc) {

    case 134: return AVCOL_TRC_BT709;
    case 128: return AVCOL_TRC_IEC61966_2_1;
    case 130: return AVCOL_TRC_LINEAR;
    case 133: return AVCOL_TRC_GAMMA22;
    case 132: return AVCOL_TRC_GAMMA28;
    case 129: return AVCOL_TRC_SMPTEST2084;
    case 131: return AVCOL_TRC_ARIB_STD_B67;
    default: return AVCOL_TRC_UNSPECIFIED;
    }
}
