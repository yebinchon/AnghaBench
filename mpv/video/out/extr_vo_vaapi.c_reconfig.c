
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct mp_image_params {int imgfmt; int h; int w; } ;
struct priv {struct mp_image_params image_params; } ;


 int IMGFMT_VAAPI ;
 int alloc_swdec_surfaces (struct priv*,int ,int ,int ) ;
 int free_video_specific (struct priv*) ;
 int resize (struct priv*) ;
 int vo_x11_config_vo_window (struct vo*) ;

__attribute__((used)) static int reconfig(struct vo *vo, struct mp_image_params *params)
{
    struct priv *p = vo->priv;

    free_video_specific(p);

    vo_x11_config_vo_window(vo);

    if (params->imgfmt != IMGFMT_VAAPI) {
        if (!alloc_swdec_surfaces(p, params->w, params->h, params->imgfmt))
            return -1;
    }

    p->image_params = *params;
    resize(p);
    return 0;
}
