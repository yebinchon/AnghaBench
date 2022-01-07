
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_backend {struct priv* priv; } ;
struct priv {int renderer; } ;
struct mp_image_params {int dummy; } ;


 int gl_video_config (int ,struct mp_image_params*) ;

__attribute__((used)) static void reconfig(struct render_backend *ctx, struct mp_image_params *params)
{
    struct priv *p = ctx->priv;

    gl_video_config(p->renderer, params);
}
