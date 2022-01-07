
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_frame {int dummy; } ;
struct ra_swapchain {TYPE_1__* ctx; } ;
struct priv {scalar_t__ d3d11_context; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int ID3D11DeviceContext_Flush (scalar_t__) ;
 int ra_gl_ctx_submit_frame (struct ra_swapchain*,struct vo_frame const*) ;

__attribute__((used)) static bool angle_submit_frame(struct ra_swapchain *sw,
                               const struct vo_frame *frame)
{
    struct priv *p = sw->ctx->priv;
    bool ret = ra_gl_ctx_submit_frame(sw, frame);
    if (p->d3d11_context) {



        ID3D11DeviceContext_Flush(p->d3d11_context);
    }
    return ret;
}
