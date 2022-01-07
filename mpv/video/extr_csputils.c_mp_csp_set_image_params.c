
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_params {int color; } ;
struct mp_csp_params {int color; } ;


 int mp_image_params_guess_csp (struct mp_image_params*) ;

void mp_csp_set_image_params(struct mp_csp_params *params,
                             const struct mp_image_params *imgparams)
{
    struct mp_image_params p = *imgparams;
    mp_image_params_guess_csp(&p);
    params->color = p.color;
}
