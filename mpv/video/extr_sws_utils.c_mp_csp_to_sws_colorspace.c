
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;


 int mp_csp_to_avcol_spc (int) ;

__attribute__((used)) static int mp_csp_to_sws_colorspace(enum mp_csp csp)
{


    return mp_csp_to_avcol_spc(csp);
}
