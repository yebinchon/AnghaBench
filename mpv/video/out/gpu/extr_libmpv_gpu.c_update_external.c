
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int * osd; } ;
struct render_backend {struct priv* priv; } ;
struct priv {int renderer; } ;


 int gl_video_configure_queue (int ,struct vo*) ;
 int gl_video_set_osd_source (int ,int *) ;

__attribute__((used)) static void update_external(struct render_backend *ctx, struct vo *vo)
{
    struct priv *p = ctx->priv;

    gl_video_set_osd_source(p->renderer, vo ? vo->osd : ((void*)0));
    if (vo)
        gl_video_configure_queue(p->renderer, vo);
}
