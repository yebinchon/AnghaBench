
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;


 int AVCOL_SPC_BT2020_CL ;
 int AVCOL_SPC_BT2020_NCL ;
 int AVCOL_SPC_BT470BG ;
 int AVCOL_SPC_BT709 ;
 int AVCOL_SPC_RGB ;
 int AVCOL_SPC_SMPTE240M ;
 int AVCOL_SPC_UNSPECIFIED ;
 int AVCOL_SPC_YCOCG ;
int mp_csp_to_avcol_spc(enum mp_csp colorspace)
{
    switch (colorspace) {
    case 131: return AVCOL_SPC_BT709;
    case 132: return AVCOL_SPC_BT470BG;
    case 133: return AVCOL_SPC_BT2020_NCL;
    case 134: return AVCOL_SPC_BT2020_CL;
    case 129: return AVCOL_SPC_SMPTE240M;
    case 130: return AVCOL_SPC_RGB;
    case 128: return AVCOL_SPC_YCOCG;
    default: return AVCOL_SPC_UNSPECIFIED;
    }
}
