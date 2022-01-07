
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zimg_matrix_coefficients_e ;
typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;
 int ZIMG_MATRIX_BT2020_CL ;
 int ZIMG_MATRIX_BT2020_NCL ;
 int ZIMG_MATRIX_BT470_BG ;
 int ZIMG_MATRIX_BT709 ;
 int ZIMG_MATRIX_RGB ;
 int ZIMG_MATRIX_ST240_M ;
 int ZIMG_MATRIX_YCGCO ;

__attribute__((used)) static zimg_matrix_coefficients_e mp_to_z_matrix(enum mp_csp csp)
{
    switch (csp) {
    case 133: return ZIMG_MATRIX_BT470_BG;
    case 132: return ZIMG_MATRIX_BT709;
    case 130: return ZIMG_MATRIX_ST240_M;
    case 134: return ZIMG_MATRIX_BT2020_NCL;
    case 135: return ZIMG_MATRIX_BT2020_CL;
    case 131: return ZIMG_MATRIX_RGB;
    case 129: return ZIMG_MATRIX_RGB;
    case 128: return ZIMG_MATRIX_YCGCO;
    default: return ZIMG_MATRIX_BT709;
    }
}
