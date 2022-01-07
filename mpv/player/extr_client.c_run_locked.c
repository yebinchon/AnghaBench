
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mpctx; } ;
typedef TYPE_2__ mpv_handle ;
struct TYPE_4__ {int dispatch; } ;


 int mp_dispatch_lock (int ) ;
 int mp_dispatch_unlock (int ) ;

__attribute__((used)) static void run_locked(mpv_handle *ctx, void (*fn)(void *fn_data), void *fn_data)
{
    mp_dispatch_lock(ctx->mpctx->dispatch);
    fn(fn_data);
    mp_dispatch_unlock(ctx->mpctx->dispatch);
}
