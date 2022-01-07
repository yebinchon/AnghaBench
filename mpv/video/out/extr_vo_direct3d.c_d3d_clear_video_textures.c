
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tex_h; } ;
struct TYPE_8__ {int Pitch; int pBits; } ;
struct texplane {TYPE_1__ texture; TYPE_2__ locked_rect; int clearval; } ;
struct TYPE_9__ {int plane_count; struct texplane* planes; } ;
typedef TYPE_3__ d3d_priv ;


 int d3d_lock_video_textures (TYPE_3__*) ;
 int d3d_unlock_video_objects (TYPE_3__*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void d3d_clear_video_textures(d3d_priv *priv)
{
    if (!d3d_lock_video_textures(priv))
        return;

    for (int n = 0; n < priv->plane_count; n++) {
        struct texplane *plane = &priv->planes[n];
        memset(plane->locked_rect.pBits, plane->clearval,
               plane->locked_rect.Pitch * plane->texture.tex_h);
    }

    d3d_unlock_video_objects(priv);
}
