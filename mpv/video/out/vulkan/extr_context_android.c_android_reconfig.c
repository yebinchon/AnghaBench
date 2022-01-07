
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; } ;


 int ra_vk_ctx_resize (struct ra_ctx*,int,int) ;
 int vo_android_surface_size (int ,int*,int*) ;

__attribute__((used)) static bool android_reconfig(struct ra_ctx *ctx)
{
    int w, h;
    if (!vo_android_surface_size(ctx->vo, &w, &h))
        return 0;

    ra_vk_ctx_resize(ctx, w, h);
    return 1;
}
