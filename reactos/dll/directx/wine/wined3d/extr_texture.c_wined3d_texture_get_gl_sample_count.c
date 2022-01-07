
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ multisample_type; int multisample_quality; struct wined3d_format* format; } ;
struct wined3d_texture {TYPE_1__ resource; } ;
struct wined3d_format {unsigned int multisample_types; } ;


 int CHAR_BIT ;
 scalar_t__ WINED3D_MULTISAMPLE_NON_MASKABLE ;

__attribute__((used)) static unsigned int wined3d_texture_get_gl_sample_count(const struct wined3d_texture *texture)
{
    const struct wined3d_format *format = texture->resource.format;
    if (texture->resource.multisample_type == WINED3D_MULTISAMPLE_NON_MASKABLE)
    {
        unsigned int i, count = 0;

        for (i = 0; i < sizeof(format->multisample_types) * CHAR_BIT; ++i)
        {
            if (format->multisample_types & 1u << i)
            {
                if (texture->resource.multisample_quality == count++)
                    break;
            }
        }
        return i + 1;
    }

    return texture->resource.multisample_type;
}
