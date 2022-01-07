
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {int dummy; } ;


 int mp_write_watch_later_conf (struct MPContext*) ;

__attribute__((used)) static void cmd_write_watch_later_config(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    mp_write_watch_later_conf(mpctx);
}
