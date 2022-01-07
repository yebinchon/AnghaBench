
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_rect {int y1; int y0; int x1; int x0; } ;
struct TYPE_6__ {int bottom; int top; int right; int left; } ;
struct TYPE_5__ {int bottom; int top; int right; int left; } ;
struct TYPE_7__ {TYPE_2__ fs_panscan_rect; TYPE_1__ fs_movie_rect; int osd_res; int vo; } ;
typedef TYPE_3__ d3d_priv ;


 int vo_get_src_dst_rects (int ,struct mp_rect*,struct mp_rect*,int *) ;

__attribute__((used)) static void calc_fs_rect(d3d_priv *priv)
{
    struct mp_rect src_rect;
    struct mp_rect dst_rect;
    vo_get_src_dst_rects(priv->vo, &src_rect, &dst_rect, &priv->osd_res);

    priv->fs_movie_rect.left = dst_rect.x0;
    priv->fs_movie_rect.right = dst_rect.x1;
    priv->fs_movie_rect.top = dst_rect.y0;
    priv->fs_movie_rect.bottom = dst_rect.y1;
    priv->fs_panscan_rect.left = src_rect.x0;
    priv->fs_panscan_rect.right = src_rect.x1;
    priv->fs_panscan_rect.top = src_rect.y0;
    priv->fs_panscan_rect.bottom = src_rect.y1;
}
