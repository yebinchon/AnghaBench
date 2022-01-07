
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp_trc { ____Placeholder_mp_csp_trc } mp_csp_trc ;







 double MP_REF_WHITE ;

float mp_trc_nom_peak(enum mp_csp_trc trc)
{
    switch (trc) {
    case 131: return 10000.0 / MP_REF_WHITE;
    case 132: return 12.0;
    case 128: return 46.0855;
    case 130: return 6.52;
    case 129: return 9.212;
    }

    return 1.0;
}
