
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int dummy; } ;
struct mp_cmd_ctx {int success; TYPE_2__* args; struct MPContext* mpctx; } ;
struct MPContext {int playlist; } ;
struct TYPE_3__ {int i; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int MP_EVENT_CHANGE_PLAYLIST ;
 int mp_notify (struct MPContext*,int ,int *) ;
 struct playlist_entry* playlist_entry_from_index (int ,int ) ;
 int playlist_move (int ,struct playlist_entry*,struct playlist_entry*) ;

__attribute__((used)) static void cmd_playlist_move(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    struct playlist_entry *e1 = playlist_entry_from_index(mpctx->playlist,
                                                          cmd->args[0].v.i);
    struct playlist_entry *e2 = playlist_entry_from_index(mpctx->playlist,
                                                          cmd->args[1].v.i);
    if (!e1) {
        cmd->success = 0;
        return;
    }

    playlist_move(mpctx->playlist, e1, e2);
    mp_notify(mpctx, MP_EVENT_CHANGE_PLAYLIST, ((void*)0));
}
