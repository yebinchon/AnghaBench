
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {TYPE_1__* vo; struct priv* priv; } ;
struct priv {int sync; int (* XGetSyncValues ) (int ,int ,int*,int*,int*) ;} ;
typedef int int64_t ;
struct TYPE_4__ {int window; int display; } ;
struct TYPE_3__ {TYPE_2__* x11; } ;


 int assert (int (*) (int ,int ,int*,int*,int*)) ;
 int oml_sync_swap (int *,int,int,int) ;
 int stub1 (int ,int ,int*,int*,int*) ;

__attribute__((used)) static void update_vsync_oml(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    assert(p->XGetSyncValues);

    int64_t ust, msc, sbc;
    if (!p->XGetSyncValues(ctx->vo->x11->display, ctx->vo->x11->window,
                           &ust, &msc, &sbc))
        ust = msc = sbc = -1;

    oml_sync_swap(&p->sync, ust, msc, sbc);
}
