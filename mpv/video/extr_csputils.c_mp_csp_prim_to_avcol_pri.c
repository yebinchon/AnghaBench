
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp_prim { ____Placeholder_mp_csp_prim } mp_csp_prim ;


 int AVCOL_PRI_BT2020 ;
 int AVCOL_PRI_BT470BG ;
 int AVCOL_PRI_BT470M ;
 int AVCOL_PRI_BT709 ;
 int AVCOL_PRI_SMPTE170M ;
 int AVCOL_PRI_UNSPECIFIED ;






int mp_csp_prim_to_avcol_pri(enum mp_csp_prim prim)
{
    switch (prim) {
    case 130: return AVCOL_PRI_SMPTE170M;
    case 129: return AVCOL_PRI_BT470BG;
    case 128: return AVCOL_PRI_BT709;
    case 132: return AVCOL_PRI_BT2020;
    case 131: return AVCOL_PRI_BT470M;
    default: return AVCOL_PRI_UNSPECIFIED;
    }
}
