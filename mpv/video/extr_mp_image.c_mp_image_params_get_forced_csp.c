
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image_params {int hw_subfmt; int imgfmt; } ;
typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;


 int mp_imgfmt_get_forced_csp (int) ;

__attribute__((used)) static enum mp_csp mp_image_params_get_forced_csp(struct mp_image_params *params)
{
    int imgfmt = params->hw_subfmt ? params->hw_subfmt : params->imgfmt;
    return mp_imgfmt_get_forced_csp(imgfmt);
}
