
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zimg_transfer_characteristics_e ;
typedef enum mp_csp_trc { ____Placeholder_mp_csp_trc } mp_csp_trc ;
 int ZIMG_TRANSFER_ARIB_B67 ;
 int ZIMG_TRANSFER_BT470_BG ;
 int ZIMG_TRANSFER_BT470_M ;
 int ZIMG_TRANSFER_BT709 ;
 int ZIMG_TRANSFER_IEC_61966_2_1 ;
 int ZIMG_TRANSFER_LINEAR ;
 int ZIMG_TRANSFER_ST2084 ;

__attribute__((used)) static zimg_transfer_characteristics_e mp_to_z_trc(enum mp_csp_trc trc)
{
    switch (trc) {
    case 142: return ZIMG_TRANSFER_BT709;
    case 131: return ZIMG_TRANSFER_IEC_61966_2_1;
    case 134: return ZIMG_TRANSFER_LINEAR;
    case 139: return ZIMG_TRANSFER_BT470_M;
    case 136: return ZIMG_TRANSFER_BT470_BG;
    case 133: return ZIMG_TRANSFER_ST2084;
    case 135: return ZIMG_TRANSFER_ARIB_B67;
    case 141:
    case 140:
    case 138:
    case 137:
    case 132:
    case 128:
    case 130:
    case 129:
    default: return ZIMG_TRANSFER_BT709;
    }
}
