
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int name; int mpctx; } ;
typedef TYPE_1__ mpv_handle ;


 int lock_core (TYPE_1__*) ;
 int mp_hook_add (int ,int ,char const*,int ,int,int) ;
 int unlock_core (TYPE_1__*) ;

int mpv_hook_add(mpv_handle *ctx, uint64_t reply_userdata,
                 const char *name, int priority)
{
    lock_core(ctx);
    mp_hook_add(ctx->mpctx, ctx->name, name, reply_userdata, priority, 0);
    unlock_core(ctx);
    return 0;
}
