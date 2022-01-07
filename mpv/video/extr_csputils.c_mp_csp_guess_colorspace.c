
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;


 int MP_CSP_BT_601 ;
 int MP_CSP_BT_709 ;

enum mp_csp mp_csp_guess_colorspace(int width, int height)
{
    return width >= 1280 || height > 576 ? MP_CSP_BT_709 : MP_CSP_BT_601;
}
