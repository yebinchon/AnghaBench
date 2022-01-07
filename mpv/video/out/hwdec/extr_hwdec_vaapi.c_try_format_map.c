
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {int dummy; } ;
struct ra_hwdec {int dummy; } ;
struct mp_image {int params; } ;


 struct ra_hwdec_mapper* ra_hwdec_mapper_create (struct ra_hwdec*,int *) ;
 int ra_hwdec_mapper_free (struct ra_hwdec_mapper**) ;
 scalar_t__ ra_hwdec_mapper_map (struct ra_hwdec_mapper*,struct mp_image*) ;

__attribute__((used)) static bool try_format_map(struct ra_hwdec *hw, struct mp_image *surface)
{
    bool ok = 0;
    struct ra_hwdec_mapper *mapper = ra_hwdec_mapper_create(hw, &surface->params);
    if (mapper)
        ok = ra_hwdec_mapper_map(mapper, surface) >= 0;
    ra_hwdec_mapper_free(&mapper);
    return ok;
}
