
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_vsync_info {int dummy; } ;
struct ra_swapchain {int ctx; struct priv* priv; } ;
struct TYPE_2__ {int (* get_vsync ) (int ,struct vo_vsync_info*) ;} ;
struct priv {TYPE_1__ params; } ;


 int stub1 (int ,struct vo_vsync_info*) ;

__attribute__((used)) static void get_vsync(struct ra_swapchain *sw,
                      struct vo_vsync_info *info)
{
    struct priv *p = sw->priv;
    if (p->params.get_vsync)
        p->params.get_vsync(sw->ctx, info);
}
