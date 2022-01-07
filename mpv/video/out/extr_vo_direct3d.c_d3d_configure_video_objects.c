
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int tex_h; int tex_w; int h; int w; int system; } ;
struct texplane {int shift_x; int shift_y; TYPE_3__ texture; int bits_per_pixel; int d3d_format; } ;
struct TYPE_8__ {scalar_t__ image_format; int plane_count; int src_width; int src_height; int d3d_surface; int movie_src_fmt; int d3d_device; struct texplane* planes; scalar_t__ use_textures; } ;
typedef TYPE_1__ d3d_priv ;


 int D3DPOOL_DEFAULT ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_CreateOffscreenPlainSurface (int ,int,int,int ,int ,int *,int *) ;
 int MP_ERR (TYPE_1__*,char*,...) ;
 int MP_VERBOSE (TYPE_1__*,char*,int,int ,int,int,int ,int ,int ,int ) ;
 int assert (int) ;
 int d3d_clear_video_textures (TYPE_1__*) ;
 int d3dtex_allocate (TYPE_1__*,TYPE_3__*,int ,int,int) ;

__attribute__((used)) static bool d3d_configure_video_objects(d3d_priv *priv)
{
    int n;
    bool need_clear = 0;

    assert(priv->image_format != 0);

    if (priv->use_textures) {
        for (n = 0; n < priv->plane_count; n++) {
            struct texplane *plane = &priv->planes[n];

            if (!plane->texture.system) {
                if (!d3dtex_allocate(priv,
                                     &plane->texture,
                                     plane->d3d_format,
                                     priv->src_width >> plane->shift_x,
                                     priv->src_height >> plane->shift_y))
                {
                    MP_ERR(priv, "Allocating plane %d"
                           " failed.\n", n);
                    return 0;
                }

                MP_VERBOSE(priv, "Allocated plane %d:"
                       " %d bit, shift=%d/%d size=%d/%d (%d/%d).\n", n,
                       plane->bits_per_pixel,
                       plane->shift_x, plane->shift_y,
                       plane->texture.w, plane->texture.h,
                       plane->texture.tex_w, plane->texture.tex_h);

                need_clear = 1;
            }
        }

        if (need_clear)
            d3d_clear_video_textures(priv);

    } else {

        if (!priv->d3d_surface &&
            FAILED(IDirect3DDevice9_CreateOffscreenPlainSurface(
                priv->d3d_device, priv->src_width, priv->src_height,
                priv->movie_src_fmt, D3DPOOL_DEFAULT, &priv->d3d_surface, ((void*)0))))
        {
            MP_ERR(priv, "Allocating offscreen surface failed.\n");
            return 0;
        }
    }

    return 1;
}
