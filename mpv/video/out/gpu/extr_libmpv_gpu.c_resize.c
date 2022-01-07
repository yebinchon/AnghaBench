
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_backend {struct priv* priv; } ;
struct priv {int renderer; } ;
struct mp_rect {int dummy; } ;
struct mp_osd_res {int dummy; } ;


 int gl_video_resize (int ,struct mp_rect*,struct mp_rect*,struct mp_osd_res*) ;

__attribute__((used)) static void resize(struct render_backend *ctx, struct mp_rect *src,
                   struct mp_rect *dst, struct mp_osd_res *osd)
{
    struct priv *p = ctx->priv;

    gl_video_resize(p->renderer, src, dst, osd);
}
