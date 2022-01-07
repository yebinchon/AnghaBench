
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int mpctx; } ;
typedef TYPE_1__ mpv_handle ;


 int MPV_EVENT_COMMAND_REPLY ;
 int abort_async (int ,TYPE_1__*,int ,int ) ;

void mpv_abort_async_command(mpv_handle *ctx, uint64_t reply_userdata)
{
    abort_async(ctx->mpctx, ctx, MPV_EVENT_COMMAND_REPLY, reply_userdata);
}
