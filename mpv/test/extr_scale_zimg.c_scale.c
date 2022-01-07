
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_zimg_context {int dummy; } ;
struct mp_image {int dummy; } ;


 int mp_zimg_convert (struct mp_zimg_context*,struct mp_image*,struct mp_image*) ;

__attribute__((used)) static bool scale(void *pctx, struct mp_image *dst, struct mp_image *src)
{
    struct mp_zimg_context *ctx = pctx;
    return mp_zimg_convert(ctx, dst, src);
}
