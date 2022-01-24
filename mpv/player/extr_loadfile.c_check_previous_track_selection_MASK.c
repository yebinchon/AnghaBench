#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct MPOpts {int** stream_id; } ;
struct MPContext {char* track_layout_hash; struct MPOpts* opts; } ;

/* Variables and functions */
 int NUM_PTRACKS ; 
 int STREAM_TYPE_COUNT ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct MPContext*) ; 

__attribute__((used)) static void FUNC3(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;

    if (!mpctx->track_layout_hash)
        return;

    char *h = FUNC2(mpctx);
    if (FUNC0(h, mpctx->track_layout_hash) != 0) {
        // Reset selection, but only if they're not "auto" or "off". The
        // defaults are -1 (default selection), or -2 (off) for secondary tracks.
        for (int t = 0; t < STREAM_TYPE_COUNT; t++) {
            for (int i = 0; i < NUM_PTRACKS; i++) {
                if (opts->stream_id[i][t] >= 0)
                    opts->stream_id[i][t] = i == 0 ? -1 : -2;
            }
        }
        FUNC1(mpctx->track_layout_hash);
        mpctx->track_layout_hash = NULL;
    }
    FUNC1(h);
}