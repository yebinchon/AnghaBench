
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zimg_color_primaries_e ;
typedef enum mp_csp_prim { ____Placeholder_mp_csp_prim } mp_csp_prim ;
 int ZIMG_PRIMARIES_BT2020 ;
 int ZIMG_PRIMARIES_BT470_BG ;
 int ZIMG_PRIMARIES_BT470_M ;
 int ZIMG_PRIMARIES_BT709 ;
 int ZIMG_PRIMARIES_ST170_M ;
 int ZIMG_PRIMARIES_ST428 ;
 int ZIMG_PRIMARIES_ST431_2 ;
 int ZIMG_PRIMARIES_ST432_1 ;

__attribute__((used)) static zimg_color_primaries_e mp_to_z_prim(enum mp_csp_prim prim)
{
    switch (prim) {
    case 136:return ZIMG_PRIMARIES_ST170_M;
    case 135:return ZIMG_PRIMARIES_BT470_BG;
    case 134: return ZIMG_PRIMARIES_BT709;
    case 138: return ZIMG_PRIMARIES_BT2020;
    case 137: return ZIMG_PRIMARIES_BT470_M;
    case 133: return ZIMG_PRIMARIES_ST428;
    case 132: return ZIMG_PRIMARIES_ST431_2;
    case 131:return ZIMG_PRIMARIES_ST432_1;
    case 139:
    case 140:
    case 130:
    case 128:
    case 129:
    default: return ZIMG_PRIMARIES_BT709;
    }
}
