
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_sws_context {int flags; } ;
struct mp_image {int dummy; } ;


 struct mp_sws_context* mp_sws_alloc (int *) ;
 int mp_sws_scale (struct mp_sws_context*,struct mp_image*,struct mp_image*) ;
 int talloc_free (struct mp_sws_context*) ;

int mp_image_swscale(struct mp_image *dst, struct mp_image *src,
                     int my_sws_flags)
{
    struct mp_sws_context *ctx = mp_sws_alloc(((void*)0));
    ctx->flags = my_sws_flags;
    int res = mp_sws_scale(ctx, dst, src);
    talloc_free(ctx);
    return res;
}
