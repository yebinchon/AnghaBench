
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_backend {struct priv* priv; } ;
struct priv {int renderer; } ;
struct mp_image {int dummy; } ;


 struct mp_image* gl_video_get_image (int ,int,int,int,int) ;

__attribute__((used)) static struct mp_image *get_image(struct render_backend *ctx, int imgfmt,
                                  int w, int h, int stride_align)
{
    struct priv *p = ctx->priv;

    return gl_video_get_image(p->renderer, imgfmt, w, h, stride_align);
}
