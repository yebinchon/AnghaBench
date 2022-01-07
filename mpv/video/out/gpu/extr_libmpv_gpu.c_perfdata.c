
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voctrl_performance_data {int dummy; } ;
struct render_backend {struct priv* priv; } ;
struct priv {int renderer; } ;


 int gl_video_perfdata (int ,struct voctrl_performance_data*) ;

__attribute__((used)) static void perfdata(struct render_backend *ctx,
                     struct voctrl_performance_data *out)
{
    struct priv *p = ctx->priv;

    gl_video_perfdata(p->renderer, out);
}
