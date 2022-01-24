#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {int init_failed; struct playlist_entry* next; struct playlist_entry* prev; scalar_t__ playback_short; } ;
struct MPContext {TYPE_2__* playlist; TYPE_1__* opts; } ;
struct TYPE_5__ {struct playlist_entry* first; struct playlist_entry* last; } ;
struct TYPE_4__ {int loop_times; scalar_t__ shuffle; } ;

/* Variables and functions */
 struct playlist_entry* FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

struct playlist_entry *FUNC2(struct MPContext *mpctx, int direction,
                                    bool force, bool mutate)
{
    struct playlist_entry *next = FUNC0(mpctx->playlist, direction);
    if (next && direction < 0 && !force) {
        // Don't jump to files that would immediately go to next file anyway
        while (next && next->playback_short)
            next = next->prev;
        // Always allow jumping to first file
        if (!next && mpctx->opts->loop_times == 1)
            next = mpctx->playlist->first;
    }
    if (!next && mpctx->opts->loop_times != 1) {
        if (direction > 0) {
            if (mpctx->opts->shuffle)
                FUNC1(mpctx->playlist);
            next = mpctx->playlist->first;
            if (next && mpctx->opts->loop_times > 1)
                mpctx->opts->loop_times--;
        } else {
            next = mpctx->playlist->last;
            // Don't jump to files that would immediately go to next file anyway
            while (next && next->playback_short)
                next = next->prev;
        }
        bool ignore_failures = mpctx->opts->loop_times == -2;
        if (!force && next && next->init_failed && !ignore_failures) {
            // Don't endless loop if no file in playlist is playable
            bool all_failed = true;
            struct playlist_entry *cur;
            for (cur = mpctx->playlist->first; cur; cur = cur->next) {
                all_failed &= cur->init_failed;
                if (!all_failed)
                    break;
            }
            if (all_failed)
                next = NULL;
        }
    }
    return next;
}