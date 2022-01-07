
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_ctx {struct priv* priv; } ;
struct priv {int sync; int egl_surface; int egl_display; int (* GetSyncValues ) (int ,int ,int*,int*,int*) ;} ;
typedef int int64_t ;


 int eglSwapBuffers (int ,int ) ;
 int oml_sync_swap (int *,int,int,int) ;
 int stub1 (int ,int ,int*,int*,int*) ;

__attribute__((used)) static void mpegl_swap_buffers(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    eglSwapBuffers(p->egl_display, p->egl_surface);

    int64_t ust, msc, sbc;
    if (!p->GetSyncValues || !p->GetSyncValues(p->egl_display, p->egl_surface,
                                               &ust, &msc, &sbc))
        ust = msc = sbc = -1;

    oml_sync_swap(&p->sync, ust, msc, sbc);
}
