
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct playlist_entry {int init_failed; struct playlist_entry* next; struct playlist_entry* prev; scalar_t__ playback_short; } ;
struct MPContext {TYPE_2__* playlist; TYPE_1__* opts; } ;
struct TYPE_5__ {struct playlist_entry* first; struct playlist_entry* last; } ;
struct TYPE_4__ {int loop_times; scalar_t__ shuffle; } ;


 struct playlist_entry* playlist_get_next (TYPE_2__*,int) ;
 int playlist_shuffle (TYPE_2__*) ;

struct playlist_entry *mp_next_file(struct MPContext *mpctx, int direction,
                                    bool force, bool mutate)
{
    struct playlist_entry *next = playlist_get_next(mpctx->playlist, direction);
    if (next && direction < 0 && !force) {

        while (next && next->playback_short)
            next = next->prev;

        if (!next && mpctx->opts->loop_times == 1)
            next = mpctx->playlist->first;
    }
    if (!next && mpctx->opts->loop_times != 1) {
        if (direction > 0) {
            if (mpctx->opts->shuffle)
                playlist_shuffle(mpctx->playlist);
            next = mpctx->playlist->first;
            if (next && mpctx->opts->loop_times > 1)
                mpctx->opts->loop_times--;
        } else {
            next = mpctx->playlist->last;

            while (next && next->playback_short)
                next = next->prev;
        }
        bool ignore_failures = mpctx->opts->loop_times == -2;
        if (!force && next && next->init_failed && !ignore_failures) {

            bool all_failed = 1;
            struct playlist_entry *cur;
            for (cur = mpctx->playlist->first; cur; cur = cur->next) {
                all_failed &= cur->init_failed;
                if (!all_failed)
                    break;
            }
            if (all_failed)
                next = ((void*)0);
        }
    }
    return next;
}
