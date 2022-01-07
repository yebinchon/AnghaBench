
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int image_format; int image_width; int image_height; } ;
struct mp_image_params {int imgfmt; int w; int h; } ;


 int resize (struct vo*) ;

__attribute__((used)) static int reconfig(struct vo *vo, struct mp_image_params *params)
{
    struct priv *priv = vo->priv;
    priv->image_height = params->h;
    priv->image_width = params->w;
    priv->image_format = params->imgfmt;

    return resize(vo);
}
