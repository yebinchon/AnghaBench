
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpv_render_context {TYPE_2__* renderer; } ;
struct mp_image {int dummy; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {struct mp_image* (* get_image ) (TYPE_2__*,int,int,int,int) ;} ;


 struct mp_image* stub1 (TYPE_2__*,int,int,int,int) ;

__attribute__((used)) static struct mp_image *render_get_image(void *ptr, int imgfmt, int w, int h,
                                         int stride_align)
{
    struct mpv_render_context *ctx = ptr;

    return ctx->renderer->fns->get_image(ctx->renderer, imgfmt, w, h, stride_align);
}
