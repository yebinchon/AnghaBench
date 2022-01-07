
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd_ctx {int success; TYPE_1__* abort; } ;
struct command_ctx {struct mp_cmd_ctx* cache_dump_cmd; } ;
struct MPContext {int demuxer; struct command_ctx* command_ctx; } ;
struct TYPE_2__ {int cancel; } ;


 int MSGL_ERR ;
 int MSGL_INFO ;
 int assert (int) ;
 int demux_cache_dump_get_status (int) ;
 int demux_cache_dump_set (int,int ,int ,int *) ;
 scalar_t__ mp_cancel_test (int ) ;
 int mp_cmd_ctx_complete (struct mp_cmd_ctx*) ;
 int mp_cmd_msg (struct mp_cmd_ctx*,int ,char*) ;

__attribute__((used)) static void cache_dump_poll(struct MPContext *mpctx)
{
    struct command_ctx *ctx = mpctx->command_ctx;
    struct mp_cmd_ctx *cmd = ctx->cache_dump_cmd;

    if (!cmd)
        return;


    assert(mpctx->demuxer);

    if (mp_cancel_test(cmd->abort->cancel)) {


        demux_cache_dump_set(mpctx->demuxer, 0, 0, ((void*)0));
        assert(demux_cache_dump_get_status(mpctx->demuxer) <= 0);
    }

    int status = demux_cache_dump_get_status(mpctx->demuxer);
    if (status <= 0) {
        if (status < 0) {
            mp_cmd_msg(cmd, MSGL_ERR, "Cache dumping stopped due to error.");
            cmd->success = 0;
        } else {
            mp_cmd_msg(cmd, MSGL_INFO, "Cache dumping successfully ended.");
            cmd->success = 1;
        }
        ctx->cache_dump_cmd = ((void*)0);
        mp_cmd_ctx_complete(cmd);
    }
}
