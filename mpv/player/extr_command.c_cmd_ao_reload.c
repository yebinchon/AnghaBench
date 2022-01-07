
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {int dummy; } ;


 int reload_audio_output (struct MPContext*) ;

__attribute__((used)) static void cmd_ao_reload(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    reload_audio_output(mpctx);
}
