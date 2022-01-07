
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int plane_count; TYPE_1__* planes; int * d3d_surface; } ;
typedef TYPE_2__ d3d_priv ;
struct TYPE_6__ {int texture; } ;


 int IDirect3DSurface9_Release (int *) ;
 int d3d_unlock_video_objects (TYPE_2__*) ;
 int d3dtex_release (TYPE_2__*,int *) ;

__attribute__((used)) static void d3d_destroy_video_objects(d3d_priv *priv)
{
    d3d_unlock_video_objects(priv);

    if (priv->d3d_surface)
        IDirect3DSurface9_Release(priv->d3d_surface);
    priv->d3d_surface = ((void*)0);

    for (int n = 0; n < priv->plane_count; n++) {
        d3dtex_release(priv, &priv->planes[n].texture);
    }
}
