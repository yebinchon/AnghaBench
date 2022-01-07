
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;


 int MP_CSP_RGB ;
 int MP_CSP_XYZ ;
 int assert (int) ;

double mp_get_csp_mul(enum mp_csp csp, int input_bits, int texture_bits)
{
    assert(texture_bits >= input_bits);


    if (!input_bits)
        return 1;


    if (csp == MP_CSP_RGB)
        return ((1LL << input_bits) - 1.) / ((1LL << texture_bits) - 1.);

    if (csp == MP_CSP_XYZ)
        return 1;


    return (1LL << input_bits) / ((1LL << texture_bits) - 1.) * 255 / 256;
}
