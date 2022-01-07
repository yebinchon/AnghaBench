
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_frame {int dummy; } ;
struct ra_swapchain {struct priv* priv; } ;
struct priv {int swapchain; } ;


 int pl_swapchain_submit_frame (int ) ;

__attribute__((used)) static bool submit_frame(struct ra_swapchain *sw, const struct vo_frame *frame)
{
    struct priv *p = sw->priv;
    return pl_swapchain_submit_frame(p->swapchain);
}
