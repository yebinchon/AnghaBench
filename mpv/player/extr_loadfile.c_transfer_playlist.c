
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int filename; } ;
struct playlist {struct playlist_entry* current; scalar_t__ first; } ;
struct MPContext {TYPE_1__* playlist; } ;
struct TYPE_3__ {struct playlist_entry* current; } ;


 int MP_WARN (struct MPContext*,char*) ;
 int playlist_add_redirect (struct playlist*,int ) ;
 int playlist_remove (TYPE_1__*,struct playlist_entry*) ;
 int playlist_transfer_entries (TYPE_1__*,struct playlist*) ;
 int prepare_playlist (struct MPContext*,struct playlist*) ;

__attribute__((used)) static void transfer_playlist(struct MPContext *mpctx, struct playlist *pl)
{
    if (pl->first) {
        prepare_playlist(mpctx, pl);
        struct playlist_entry *new = pl->current;
        if (mpctx->playlist->current)
            playlist_add_redirect(pl, mpctx->playlist->current->filename);
        playlist_transfer_entries(mpctx->playlist, pl);

        if (mpctx->playlist->current)
            playlist_remove(mpctx->playlist, mpctx->playlist->current);
        if (new)
            mpctx->playlist->current = new;
    } else {
        MP_WARN(mpctx, "Empty playlist!\n");
    }
}
