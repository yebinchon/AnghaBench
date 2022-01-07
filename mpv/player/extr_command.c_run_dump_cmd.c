
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {int success; struct MPContext* mpctx; } ;
struct command_ctx {struct mp_cmd_ctx* cache_dump_cmd; } ;
struct MPContext {int demuxer; struct command_ctx* command_ctx; } ;


 int MSGL_ERR ;
 int MSGL_INFO ;
 int cache_dump_poll (struct MPContext*) ;
 int demux_cache_dump_set (int ,double,double,char*) ;
 int mp_abort_cache_dumping (struct MPContext*) ;
 int mp_cmd_ctx_complete (struct mp_cmd_ctx*) ;
 int mp_cmd_msg (struct mp_cmd_ctx*,int ,char*) ;

__attribute__((used)) static void run_dump_cmd(struct mp_cmd_ctx *cmd, double start, double end,
                         char *filename)
{
    struct MPContext *mpctx = cmd->mpctx;
    struct command_ctx *ctx = mpctx->command_ctx;

    mp_abort_cache_dumping(mpctx);

    if (!mpctx->demuxer) {
        mp_cmd_msg(cmd, MSGL_ERR, "No demuxer open.");
        cmd->success = 0;
        mp_cmd_ctx_complete(cmd);
        return;
    }

    mp_cmd_msg(cmd, MSGL_INFO, "Cache dumping started.");

    if (!demux_cache_dump_set(mpctx->demuxer, start, end, filename)) {
        mp_cmd_msg(cmd, MSGL_INFO, "Cache dumping stopped.");
        mp_cmd_ctx_complete(cmd);
        return;
    }

    ctx->cache_dump_cmd = cmd;
    cache_dump_poll(mpctx);
}
