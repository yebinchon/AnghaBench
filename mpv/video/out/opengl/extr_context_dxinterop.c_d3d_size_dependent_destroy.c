
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {struct priv* priv; } ;
struct TYPE_2__ {int (* DeleteTextures ) (int,scalar_t__*) ;int (* DXUnregisterObjectNV ) (int ,scalar_t__) ;int (* DXUnlockObjectsNV ) (int ,int,scalar_t__*) ;} ;
struct priv {int swapchain; int backbuffer; int rtarget; scalar_t__ texture; scalar_t__ rtarget_h; int device_h; TYPE_1__ gl; } ;
typedef TYPE_1__ GL ;


 int SAFE_RELEASE (int ) ;
 int stub1 (int ,int,scalar_t__*) ;
 int stub2 (int ,scalar_t__) ;
 int stub3 (int,scalar_t__*) ;

__attribute__((used)) static void d3d_size_dependent_destroy(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    GL *gl = &p->gl;

    if (p->rtarget_h) {
        gl->DXUnlockObjectsNV(p->device_h, 1, &p->rtarget_h);
        gl->DXUnregisterObjectNV(p->device_h, p->rtarget_h);
    }
    p->rtarget_h = 0;
    if (p->texture)
        gl->DeleteTextures(1, &p->texture);
    p->texture = 0;

    SAFE_RELEASE(p->rtarget);
    SAFE_RELEASE(p->backbuffer);
    SAFE_RELEASE(p->swapchain);
}
