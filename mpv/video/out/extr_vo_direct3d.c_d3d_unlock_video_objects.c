
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * pBits; } ;
struct TYPE_7__ {int system; } ;
struct texplane {TYPE_2__ locked_rect; TYPE_1__ texture; } ;
struct TYPE_9__ {int * pBits; } ;
struct TYPE_10__ {int plane_count; struct texplane* planes; TYPE_3__ locked_rect; int d3d_surface; } ;
typedef TYPE_4__ d3d_priv ;


 scalar_t__ FAILED (int ) ;
 int IDirect3DSurface9_UnlockRect (int ) ;
 int IDirect3DTexture9_UnlockRect (int ,int ) ;
 int MP_VERBOSE (TYPE_4__*,char*) ;

__attribute__((used)) static void d3d_unlock_video_objects(d3d_priv *priv)
{
    bool any_failed = 0;

    if (priv->locked_rect.pBits) {
        if (FAILED(IDirect3DSurface9_UnlockRect(priv->d3d_surface)))
            any_failed = 1;
    }
    priv->locked_rect.pBits = ((void*)0);

    for (int n = 0; n < priv->plane_count; n++) {
        struct texplane *plane = &priv->planes[n];
        if (plane->locked_rect.pBits) {
            if (FAILED(IDirect3DTexture9_UnlockRect(plane->texture.system, 0)))
                any_failed = 1;
        }
        plane->locked_rect.pBits = ((void*)0);
    }

    if (any_failed) {
        MP_VERBOSE(priv, "Unlocking video objects failed.\n");
    }
}
