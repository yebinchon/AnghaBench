
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;





 int VA_SRC_BT601 ;
 int VA_SRC_BT709 ;
 int VA_SRC_SMPTE_240 ;

int va_get_colorspace_flag(enum mp_csp csp)
{
    switch (csp) {
    case 130: return VA_SRC_BT601;
    case 129: return VA_SRC_BT709;
    case 128: return VA_SRC_SMPTE_240;
    }
    return 0;
}
