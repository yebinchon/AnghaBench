
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct playlist_entry {struct playlist_entry* next; } ;
struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {TYPE_1__* playlist; } ;
struct TYPE_2__ {struct playlist_entry* current; struct playlist_entry* first; scalar_t__ current_was_replaced; } ;


 int MP_EVENT_CHANGE_PLAYLIST ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int mp_wakeup_core (struct MPContext*) ;
 int playlist_remove (TYPE_1__*,struct playlist_entry*) ;

__attribute__((used)) static void cmd_playlist_clear(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;


    if (mpctx->playlist->current_was_replaced)
        mpctx->playlist->current = ((void*)0);
    while (mpctx->playlist->first) {
        struct playlist_entry *e = mpctx->playlist->first;
        if (e == mpctx->playlist->current) {
            e = e->next;
            if (!e)
                break;
        }
        playlist_remove(mpctx->playlist, e);
    }
    mp_notify(mpctx, MP_EVENT_CHANGE_PLAYLIST, ((void*)0));
    mp_wakeup_core(mpctx);
}
