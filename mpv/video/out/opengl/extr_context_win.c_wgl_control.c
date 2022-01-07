
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {int vo; } ;


 int VO_EVENT_RESIZE ;
 int resize (struct ra_ctx*) ;
 int vo_w32_control (int ,int*,int,void*) ;

__attribute__((used)) static int wgl_control(struct ra_ctx *ctx, int *events, int request, void *arg)
{
    int ret = vo_w32_control(ctx->vo, events, request, arg);
    if (*events & VO_EVENT_RESIZE)
        resize(ctx);
    return ret;
}
