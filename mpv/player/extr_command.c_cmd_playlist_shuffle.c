
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_cmd_ctx {struct MPContext* mpctx; } ;
struct MPContext {int playlist; } ;


 int MP_EVENT_CHANGE_PLAYLIST ;
 int mp_notify (struct MPContext*,int ,int *) ;
 int playlist_shuffle (int ) ;

__attribute__((used)) static void cmd_playlist_shuffle(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    playlist_shuffle(mpctx->playlist);
    mp_notify(mpctx, MP_EVENT_CHANGE_PLAYLIST, ((void*)0));
}
