
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct track {int type; scalar_t__ external_filename; scalar_t__ is_external; } ;
struct mp_cmd_ctx {int success; TYPE_3__* abort; TYPE_2__* args; scalar_t__ priv; struct MPContext* mpctx; } ;
struct MPContext {struct track** tracks; int playback_initialized; } ;
struct TYPE_6__ {int cancel; } ;
struct TYPE_4__ {int i; } ;
struct TYPE_5__ {TYPE_1__ v; } ;


 int MP_ERR (struct MPContext*,char*) ;
 int mp_add_external_file (struct MPContext*,char*,int,int ) ;
 int mp_remove_track (struct MPContext*,struct track*) ;
 int mp_switch_track (struct MPContext*,int ,struct track*,int ) ;
 struct track* mp_track_by_tid (struct MPContext*,int,int ) ;
 int print_track_list (struct MPContext*,char*) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,scalar_t__) ;

__attribute__((used)) static void cmd_track_reload(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int type = *(int *)cmd->priv;

    if (!mpctx->playback_initialized) {
        MP_ERR(mpctx, "Cannot reload while not initialized.\n");
        cmd->success = 0;
        return;
    }

    struct track *t = mp_track_by_tid(mpctx, type, cmd->args[0].v.i);
    int nt_num = -1;

    if (t && t->is_external && t->external_filename) {
        char *filename = talloc_strdup(((void*)0), t->external_filename);
        mp_remove_track(mpctx, t);
        nt_num = mp_add_external_file(mpctx, filename, type, cmd->abort->cancel);
        talloc_free(filename);
    }

    if (nt_num < 0) {
        cmd->success = 0;
        return;
    }

    struct track *nt = mpctx->tracks[nt_num];
    mp_switch_track(mpctx, nt->type, nt, 0);
    print_track_list(mpctx, "Reloaded:");
}
