
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {scalar_t__ ctype; scalar_t__ num_components; scalar_t__* component_depth; } ;
struct glsl_fmt {scalar_t__ ctype; scalar_t__ num_components; scalar_t__* component_depth; char const* glsl_format; } ;


 int MP_ARRAY_SIZE (struct glsl_fmt*) ;
 struct glsl_fmt* ra_glsl_fmts ;

const char *ra_fmt_glsl_format(const struct ra_format *fmt)
{
    for (int n = 0; n < MP_ARRAY_SIZE(ra_glsl_fmts); n++) {
        const struct glsl_fmt *gfmt = &ra_glsl_fmts[n];

        if (fmt->ctype != gfmt->ctype)
            continue;
        if (fmt->num_components != gfmt->num_components)
            continue;

        for (int i = 0; i < fmt->num_components; i++) {
            if (fmt->component_depth[i] != gfmt->component_depth[i])
                goto next_fmt;
        }

        return gfmt->glsl_format;

next_fmt: ;
    }

    return ((void*)0);
}
