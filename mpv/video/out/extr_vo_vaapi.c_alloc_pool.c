
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_alloc_ctx {int rt_format; int vaapi; } ;
struct mp_image {int dummy; } ;


 int IMGFMT_VAAPI ;
 struct mp_image* alloc_surface (int ,int ,int,int) ;

__attribute__((used)) static struct mp_image *alloc_pool(void *pctx, int fmt, int w, int h)
{
    struct pool_alloc_ctx *alloc_ctx = pctx;
    if (fmt != IMGFMT_VAAPI)
        return ((void*)0);

    return alloc_surface(alloc_ctx->vaapi, alloc_ctx->rt_format, w, h);
}
