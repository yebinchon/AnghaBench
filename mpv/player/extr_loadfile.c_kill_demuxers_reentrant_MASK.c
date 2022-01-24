#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct demuxer {int dummy; } ;
struct demux_free_async_state {int dummy; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_2__ {double demux_termination_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct demux_free_async_state**,int,struct demux_free_async_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct demuxer*) ; 
 int /*<<< orphan*/  FUNC4 (struct demuxer*) ; 
 struct demux_free_async_state* FUNC5 (struct demuxer*) ; 
 scalar_t__ FUNC6 (struct demux_free_async_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct demux_free_async_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct demuxer*,int /*<<< orphan*/ ,struct MPContext*) ; 
 int /*<<< orphan*/  FUNC9 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC10 (struct MPContext*,double) ; 
 double FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct demux_free_async_state**) ; 
 int /*<<< orphan*/  wakeup_demux ; 

__attribute__((used)) static void FUNC13(struct MPContext *mpctx,
                                    struct demuxer **demuxers, int num_demuxers)
{
    struct demux_free_async_state **items = NULL;
    int num_items = 0;

    for (int n = 0; n < num_demuxers; n++) {
        struct demuxer *d = demuxers[n];

        if (!FUNC4(d)) {
            // Make sure it is set if it wasn't yet.
            FUNC8(d, wakeup_demux, mpctx);

            struct demux_free_async_state *item = FUNC5(d);
            if (item) {
                FUNC1(NULL, items, num_items, item);
                d = NULL;
            }
        }

        FUNC3(d);
    }

    if (!num_items)
        return;

    FUNC0(mpctx, "Terminating demuxers...\n");

    double end = FUNC11() + mpctx->opts->demux_termination_timeout;
    bool force = false;
    while (num_items) {
        double wait = end - FUNC11();

        for (int n = 0; n < num_items; n++) {
            struct demux_free_async_state *item = items[n];
            if (FUNC6(item)) {
                items[n] = items[num_items - 1];
                num_items -= 1;
                n--;
                goto repeat;
            } else if (wait < 0) {
                FUNC7(item);
                if (!force)
                    FUNC2(mpctx, "Forcefully terminating demuxers...\n");
                force = true;
            }
        }

        if (wait >= 0)
            FUNC10(mpctx, wait);
        FUNC9(mpctx);
    repeat:;
    }

    FUNC12(items);

    FUNC0(mpctx, "Done terminating demuxers.\n");
}