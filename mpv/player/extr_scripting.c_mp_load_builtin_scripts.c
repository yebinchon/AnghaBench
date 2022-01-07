
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {int lua_load_stats; int lua_load_ytdl; int lua_load_osc; } ;


 int load_builtin_script (struct MPContext*,int ,char*) ;

void mp_load_builtin_scripts(struct MPContext *mpctx)
{
    load_builtin_script(mpctx, mpctx->opts->lua_load_osc, "@osc.lua");
    load_builtin_script(mpctx, mpctx->opts->lua_load_ytdl, "@ytdl_hook.lua");
    load_builtin_script(mpctx, mpctx->opts->lua_load_stats, "@stats.lua");
}
