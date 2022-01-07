
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct track {scalar_t__ is_external; } ;
struct mp_cmd_ctx {int success; TYPE_3__* args; TYPE_1__* abort; struct MPContext* mpctx; } ;
struct MPContext {scalar_t__ playback_initialized; scalar_t__ stop_play; } ;
struct TYPE_5__ {int i; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct TYPE_4__ {int cancel; } ;


 int STREAM_AUDIO ;
 int STREAM_SUB ;
 int autoload_external_files (struct MPContext*,int ) ;
 int mp_switch_track (struct MPContext*,int ,struct track*,int ) ;
 int print_track_list (struct MPContext*,char*) ;
 struct track* select_default_track (struct MPContext*,int ,int ) ;

__attribute__((used)) static void cmd_rescan_external_files(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    if (mpctx->stop_play) {
        cmd->success = 0;
        return;
    }

    autoload_external_files(mpctx, cmd->abort->cancel);
    if (!cmd->args[0].v.i && mpctx->playback_initialized) {

        struct track *a = select_default_track(mpctx, 0, STREAM_AUDIO);
        if (a && a->is_external)
            mp_switch_track(mpctx, STREAM_AUDIO, a, 0);
        struct track *s = select_default_track(mpctx, 0, STREAM_SUB);
        if (s && s->is_external)
            mp_switch_track(mpctx, STREAM_SUB, s, 0);

        print_track_list(mpctx, "Track list:\n");
    }
}
