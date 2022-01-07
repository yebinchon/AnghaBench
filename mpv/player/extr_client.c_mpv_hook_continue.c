
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int name; int mpctx; } ;
typedef TYPE_1__ mpv_handle ;


 int lock_core (TYPE_1__*) ;
 int mp_hook_continue (int ,int ,int ) ;
 int unlock_core (TYPE_1__*) ;

int mpv_hook_continue(mpv_handle *ctx, uint64_t id)
{
    lock_core(ctx);
    int r = mp_hook_continue(ctx->mpctx, ctx->name, id);
    unlock_core(ctx);
    return r;
}
