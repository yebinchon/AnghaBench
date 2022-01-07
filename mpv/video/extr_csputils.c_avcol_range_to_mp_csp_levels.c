
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp_levels { ____Placeholder_mp_csp_levels } mp_csp_levels ;




 int MP_CSP_LEVELS_AUTO ;
 int MP_CSP_LEVELS_PC ;
 int MP_CSP_LEVELS_TV ;

enum mp_csp_levels avcol_range_to_mp_csp_levels(int avrange)
{
    switch (avrange) {
    case 128: return MP_CSP_LEVELS_TV;
    case 129: return MP_CSP_LEVELS_PC;
    default: return MP_CSP_LEVELS_AUTO;
    }
}
