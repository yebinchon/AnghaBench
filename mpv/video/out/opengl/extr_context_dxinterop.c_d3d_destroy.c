
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {struct priv* priv; } ;
struct TYPE_2__ {int (* DXCloseDeviceNV ) (scalar_t__) ;} ;
struct priv {scalar_t__ d3d9_dll; int d3d9ex; int device; scalar_t__ device_h; TYPE_1__ gl; } ;
typedef TYPE_1__ GL ;


 int FreeLibrary (scalar_t__) ;
 int SAFE_RELEASE (int ) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void d3d_destroy(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    GL *gl = &p->gl;

    if (p->device_h)
        gl->DXCloseDeviceNV(p->device_h);
    SAFE_RELEASE(p->device);
    SAFE_RELEASE(p->d3d9ex);
    if (p->d3d9_dll)
        FreeLibrary(p->d3d9_dll);
}
