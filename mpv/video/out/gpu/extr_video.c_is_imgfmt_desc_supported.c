
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_imgfmt_desc {TYPE_1__** planes; int num_planes; } ;
struct gl_video {scalar_t__ forced_dumb_mode; } ;
struct TYPE_2__ {scalar_t__ ctype; } ;


 scalar_t__ RA_CTYPE_UINT ;

__attribute__((used)) static bool is_imgfmt_desc_supported(struct gl_video *p,
                                     const struct ra_imgfmt_desc *desc)
{
    if (!desc->num_planes)
        return 0;

    if (desc->planes[0]->ctype == RA_CTYPE_UINT && p->forced_dumb_mode)
        return 0;

    return 1;
}
