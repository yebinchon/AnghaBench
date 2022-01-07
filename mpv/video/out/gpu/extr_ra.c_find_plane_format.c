
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_format {int dummy; } ;
struct ra {int dummy; } ;
typedef enum mp_component_type { ____Placeholder_mp_component_type } mp_component_type ;




 struct ra_format const* ra_find_float_format (struct ra*,int,int) ;
 struct ra_format const* ra_find_uint_format (struct ra*,int,int) ;
 struct ra_format* ra_find_unorm_format (struct ra*,int,int) ;

__attribute__((used)) static const struct ra_format *find_plane_format(struct ra *ra, int bytes,
                                                 int n_channels,
                                                 enum mp_component_type ctype)
{
    switch (ctype) {
    case 128: {
        const struct ra_format *f = ra_find_unorm_format(ra, bytes, n_channels);
        if (f)
            return f;
        return ra_find_uint_format(ra, bytes, n_channels);
    }
    case 129:
        return ra_find_float_format(ra, bytes, n_channels);
    default: return ((void*)0);
    }
}
