
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ cur_backbuf_width; scalar_t__ cur_backbuf_height; TYPE_1__* vo; int d3d_device; int image_format; scalar_t__ opt_exact_backbuffer; } ;
typedef TYPE_2__ d3d_priv ;
struct TYPE_14__ {scalar_t__ member_2; scalar_t__ member_3; int member_5; scalar_t__ Height; scalar_t__ Width; int member_4; int member_1; int member_0; } ;
struct TYPE_12__ {scalar_t__ dwidth; scalar_t__ dheight; int want_redraw; } ;
typedef TYPE_3__ D3DVIEWPORT9 ;
typedef int D3DMATRIX ;


 int D3DTS_VIEW ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_SetTransform (int ,int ,int *) ;
 int IDirect3DDevice9_SetViewport (int ,TYPE_3__*) ;
 int MP_ERR (TYPE_2__*,char*) ;
 int MP_VERBOSE (TYPE_2__*,char*,scalar_t__,scalar_t__) ;
 int calc_fs_rect (TYPE_2__*) ;
 int change_d3d_backbuffer (TYPE_2__*) ;
 int create_d3d_surfaces (TYPE_2__*) ;
 int d3d_matrix_ortho (int *,float,scalar_t__,scalar_t__,float) ;
 int destroy_d3d_surfaces (TYPE_2__*) ;

__attribute__((used)) static bool resize_d3d(d3d_priv *priv)
{
    D3DVIEWPORT9 vp = {0, 0, priv->vo->dwidth, priv->vo->dheight, 0, 1};

    MP_VERBOSE(priv, "resize_d3d %dx%d called.\n",
               priv->vo->dwidth, priv->vo->dheight);




    bool backbuf_resize = priv->vo->dwidth > priv->cur_backbuf_width ||
                          priv->vo->dheight > priv->cur_backbuf_height;

    if (priv->opt_exact_backbuffer) {
        backbuf_resize = priv->vo->dwidth != priv->cur_backbuf_width ||
                         priv->vo->dheight != priv->cur_backbuf_height;
    }

    if (backbuf_resize || !priv->d3d_device)
    {
        destroy_d3d_surfaces(priv);
        if (!change_d3d_backbuffer(priv))
            return 0;
    }

    if (!priv->d3d_device || !priv->image_format)
        return 1;

    if (!create_d3d_surfaces(priv))
        return 0;

    if (FAILED(IDirect3DDevice9_SetViewport(priv->d3d_device, &vp))) {
        MP_ERR(priv, "Setting viewport failed.\n");
        return 0;
    }


    D3DMATRIX view;
    d3d_matrix_ortho(&view, 0.5f, vp.Width + 0.5f, vp.Height + 0.5f, 0.5f);
    IDirect3DDevice9_SetTransform(priv->d3d_device, D3DTS_VIEW, &view);

    calc_fs_rect(priv);
    priv->vo->want_redraw = 1;

    return 1;
}
