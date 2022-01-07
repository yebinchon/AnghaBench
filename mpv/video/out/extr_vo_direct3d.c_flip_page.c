
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vo {int dheight; int dwidth; TYPE_1__* priv; } ;
struct TYPE_7__ {int d3d_in_scene; scalar_t__ d3d_device; } ;
typedef TYPE_1__ d3d_priv ;
struct TYPE_8__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ RECT ;


 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_EndScene (scalar_t__) ;
 int IDirect3DDevice9_Present (scalar_t__,TYPE_2__*,int ,int ,int ) ;
 int MP_ERR (TYPE_1__*,char*) ;
 int MP_VERBOSE (TYPE_1__*,char*) ;
 int reconfigure_d3d (TYPE_1__*) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    d3d_priv *priv = vo->priv;

    if (priv->d3d_device && priv->d3d_in_scene) {
        if (FAILED(IDirect3DDevice9_EndScene(priv->d3d_device))) {
            MP_ERR(priv, "EndScene failed.\n");
        }
    }
    priv->d3d_in_scene = 0;

    RECT rect = {0, 0, vo->dwidth, vo->dheight};
    if (!priv->d3d_device ||
        FAILED(IDirect3DDevice9_Present(priv->d3d_device, &rect, 0, 0, 0))) {
        MP_VERBOSE(priv, "Trying to reinitialize uncooperative video adapter.\n");
        if (!reconfigure_d3d(priv)) {
            MP_VERBOSE(priv, "Reinitialization failed.\n");
            return;
        } else {
            MP_VERBOSE(priv, "Video adapter reinitialized.\n");
        }
    }
}
