
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_backend {struct priv* priv; } ;
struct priv {int renderer; } ;


 int gl_video_reset (int ) ;

__attribute__((used)) static void reset(struct render_backend *ctx)
{
    struct priv *p = ctx->priv;

    gl_video_reset(p->renderer);
}
