
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct playlist_entry {int dummy; } ;
struct mp_cmd_ctx {TYPE_2__* args; struct MPContext* mpctx; } ;
struct MPContext {TYPE_3__* opts; TYPE_4__* playlist; } ;
struct TYPE_9__ {int current; } ;
struct TYPE_8__ {scalar_t__ position_save_on_quit; } ;
struct TYPE_6__ {char* s; int i; char** str_list; } ;
struct TYPE_7__ {TYPE_1__ v; } ;


 int MP_EVENT_CHANGE_PLAYLIST ;
 int bstr0 (char*) ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int mp_set_playlist_entry (struct MPContext*,struct playlist_entry*) ;
 int mp_wakeup_core (struct MPContext*) ;
 int mp_write_watch_later_conf (struct MPContext*) ;
 int playlist_add (TYPE_4__*,struct playlist_entry*) ;
 int playlist_clear (TYPE_4__*) ;
 int playlist_entry_add_param (struct playlist_entry*,int ,int ) ;
 struct playlist_entry* playlist_entry_new (char*) ;

__attribute__((used)) static void cmd_loadfile(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    char *filename = cmd->args[0].v.s;
    int append = cmd->args[1].v.i;

    if (!append)
        playlist_clear(mpctx->playlist);

    struct playlist_entry *entry = playlist_entry_new(filename);
    if (cmd->args[2].v.str_list) {
        char **pairs = cmd->args[2].v.str_list;
        for (int i = 0; pairs[i] && pairs[i + 1]; i += 2)
            playlist_entry_add_param(entry, bstr0(pairs[i]), bstr0(pairs[i + 1]));
    }
    playlist_add(mpctx->playlist, entry);

    if (!append || (append == 2 && !mpctx->playlist->current)) {
        if (mpctx->opts->position_save_on_quit)
            mp_write_watch_later_conf(mpctx);
        mp_set_playlist_entry(mpctx, entry);
    }
    mp_notify(mpctx, MP_EVENT_CHANGE_PLAYLIST, ((void*)0));
    mp_wakeup_core(mpctx);
}
