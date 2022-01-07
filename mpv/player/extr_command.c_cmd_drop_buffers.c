
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {scalar_t__ demuxer; } ;


 int demux_flush (scalar_t__) ;
 int reset_audio_state (struct MPContext*) ;
 int reset_video_state (struct MPContext*) ;

__attribute__((used)) static void cmd_drop_buffers(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    reset_audio_state(mpctx);
    reset_video_state(mpctx);

    if (mpctx->demuxer)
        demux_flush(mpctx->demuxer);
}
