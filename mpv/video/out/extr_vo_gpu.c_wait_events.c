
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {struct gpu_priv* priv; } ;
struct gpu_priv {TYPE_2__* ctx; } ;
typedef int int64_t ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int (* wait_events ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;
 int vo_wait_default (struct vo*,int ) ;

__attribute__((used)) static void wait_events(struct vo *vo, int64_t until_time_us)
{
    struct gpu_priv *p = vo->priv;
    if (p->ctx && p->ctx->fns->wait_events) {
        p->ctx->fns->wait_events(p->ctx, until_time_us);
    } else {
        vo_wait_default(vo, until_time_us);
    }
}
