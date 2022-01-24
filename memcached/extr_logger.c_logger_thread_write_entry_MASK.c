#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct logger_stats {int /*<<< orphan*/  watcher_sent; int /*<<< orphan*/  watcher_skipped; } ;
struct TYPE_5__ {int eflags; int failed_flush; int sfd; scalar_t__ skipped; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ logger_watcher ;
struct TYPE_6__ {int eflags; } ;
typedef  TYPE_2__ logentry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int WATCHER_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*,int,char*,unsigned long long) ; 
 TYPE_1__** watchers ; 

__attribute__((used)) static void FUNC6(logentry *e, struct logger_stats *ls,
        char *scratch, int scratch_len) {
    int x, total;
    /* Write the line into available watchers with matching flags */
    for (x = 0; x < WATCHER_LIMIT; x++) {
        logger_watcher *w = watchers[x];
        char *skip_scr = NULL;
        if (w == NULL || (e->eflags & w->eflags) == 0)
            continue;

         /* Avoid poll()'ing constantly when buffer is full by resetting a
         * flag periodically.
         */
        while (!w->failed_flush &&
                (skip_scr = (char *) FUNC3(w->buf, scratch_len + 128)) == NULL) {
            if (FUNC4(0, x) <= 0) {
                FUNC0("LOGGER: Watcher had no free space for line of size (%d)\n", scratch_len + 128);
                w->failed_flush = true;
            }
        }

        if (w->failed_flush) {
            FUNC0("LOGGER: Fast skipped for watcher [%d] due to failed_flush\n", w->sfd);
            w->skipped++;
            ls->watcher_skipped++;
            continue;
        }

        if (w->skipped > 0) {
            total = FUNC5(skip_scr, 128, "skipped=%llu\n", (unsigned long long) w->skipped);
            if (total >= 128 || total <= 0) {
                FUNC0("LOGGER: Failed to flatten skipped message into watcher [%d]\n", w->sfd);
                w->skipped++;
                ls->watcher_skipped++;
                continue;
            }
            FUNC2(w->buf, total);
            w->skipped = 0;
        }
        /* Can't fail because bipbuf_request succeeded. */
        FUNC1(w->buf, (unsigned char *) scratch, scratch_len);
        ls->watcher_sent++;
    }
}