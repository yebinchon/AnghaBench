
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {scalar_t__ ctype; int num_components; int pixel_size; int* component_depth; scalar_t__ linear_filter; } ;
struct ra {int num_formats; struct ra_format** formats; } ;


 scalar_t__ RA_CTYPE_UNORM ;
 scalar_t__ ra_format_is_regular (struct ra_format const*) ;

const struct ra_format *ra_find_unorm_format(struct ra *ra,
                                             int bytes_per_component,
                                             int n_components)
{
    for (int n = 0; n < ra->num_formats; n++) {
        const struct ra_format *fmt = ra->formats[n];
        if (fmt->ctype == RA_CTYPE_UNORM && fmt->num_components == n_components &&
            fmt->pixel_size == bytes_per_component * n_components &&
            fmt->component_depth[0] == bytes_per_component * 8 &&
            fmt->linear_filter && ra_format_is_regular(fmt))
            return fmt;
    }
    return ((void*)0);
}
