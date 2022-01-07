
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vo {TYPE_1__* priv; } ;
struct mp_image_params {scalar_t__ imgfmt; scalar_t__ w; scalar_t__ h; } ;
struct TYPE_5__ {int have_image; scalar_t__ image_format; scalar_t__ src_width; scalar_t__ src_height; struct mp_image_params params; } ;
typedef TYPE_1__ d3d_priv ;


 int VO_ERROR ;
 int d3d_destroy_video_objects (TYPE_1__*) ;
 int init_rendering_mode (TYPE_1__*,scalar_t__,int) ;
 int resize_d3d (TYPE_1__*) ;
 int vo_w32_config (struct vo*) ;

__attribute__((used)) static int reconfig(struct vo *vo, struct mp_image_params *params)
{
    d3d_priv *priv = vo->priv;

    priv->have_image = 0;

    vo_w32_config(vo);

    if ((priv->image_format != params->imgfmt)
        || (priv->src_width != params->w)
        || (priv->src_height != params->h))
    {
        d3d_destroy_video_objects(priv);

        priv->src_width = params->w;
        priv->src_height = params->h;
        priv->params = *params;
        init_rendering_mode(priv, params->imgfmt, 1);
    }

    if (!resize_d3d(priv))
        return VO_ERROR;

    return 0;
}
