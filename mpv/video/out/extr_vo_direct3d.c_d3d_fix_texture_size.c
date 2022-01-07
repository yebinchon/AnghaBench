
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opt_disable_texture_align; scalar_t__ device_caps_square_only; scalar_t__ device_caps_power2_only; } ;
typedef TYPE_1__ d3d_priv ;


 int MPMAX (int,int) ;

__attribute__((used)) static void d3d_fix_texture_size(d3d_priv *priv, int *width, int *height)
{
    int tex_width = *width;
    int tex_height = *height;


    tex_width = MPMAX(tex_width, 1);
    tex_height = MPMAX(tex_height, 1);

    if (priv->device_caps_power2_only) {
        tex_width = 1;
        tex_height = 1;
        while (tex_width < *width) tex_width <<= 1;
        while (tex_height < *height) tex_height <<= 1;
    }
    if (priv->device_caps_square_only)

        tex_width = tex_height = MPMAX(tex_width, tex_height);

    if (!priv->opt_disable_texture_align) {
        tex_width = (tex_width + 15) & ~15;
        tex_height = (tex_height + 15) & ~15;
    }

    *width = tex_width;
    *height = tex_height;
}
