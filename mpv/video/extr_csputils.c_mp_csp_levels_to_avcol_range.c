
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp_levels { ____Placeholder_mp_csp_levels } mp_csp_levels ;


 int AVCOL_RANGE_JPEG ;
 int AVCOL_RANGE_MPEG ;
 int AVCOL_RANGE_UNSPECIFIED ;



int mp_csp_levels_to_avcol_range(enum mp_csp_levels range)
{
    switch (range) {
    case 128: return AVCOL_RANGE_MPEG;
    case 129: return AVCOL_RANGE_JPEG;
    default: return AVCOL_RANGE_UNSPECIFIED;
    }
}
