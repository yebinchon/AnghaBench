
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mpctx; } ;
typedef TYPE_1__ mpv_handle ;


 int MPV_ERROR_INVALID_PARAMETER ;
 int lock_core (TYPE_1__*) ;
 scalar_t__ mp_initialize (int ,int *) ;
 int mp_wakeup_core (int ) ;
 int unlock_core (TYPE_1__*) ;

int mpv_initialize(mpv_handle *ctx)
{
    lock_core(ctx);
    int res = mp_initialize(ctx->mpctx, ((void*)0)) ? MPV_ERROR_INVALID_PARAMETER : 0;
    mp_wakeup_core(ctx->mpctx);
    unlock_core(ctx);
    return res;
}
