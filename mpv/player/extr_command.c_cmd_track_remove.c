
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct track {int dummy; } ;
struct mp_cmd_ctx {int success; TYPE_2__* args; scalar_t__ priv; struct MPContext* mpctx; } ;
struct MPContext {scalar_t__ playback_initialized; } ;
struct TYPE_3__ {int i; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int mp_remove_track (struct MPContext*,struct track*) ;
 struct track* mp_track_by_tid (struct MPContext*,int,int ) ;
 int print_track_list (struct MPContext*,char*) ;

__attribute__((used)) static void cmd_track_remove(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int type = *(int *)cmd->priv;

    struct track *t = mp_track_by_tid(mpctx, type, cmd->args[0].v.i);
    if (!t) {
        cmd->success = 0;
        return;
    }

    mp_remove_track(mpctx, t);
    if (mpctx->playback_initialized)
        print_track_list(mpctx, "Track removed:");
}
