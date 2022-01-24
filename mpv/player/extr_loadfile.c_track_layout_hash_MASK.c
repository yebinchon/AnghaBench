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
struct track {int type; char* lang; int /*<<< orphan*/  is_external; int /*<<< orphan*/  default_track; int /*<<< orphan*/  user_tid; } ;
struct MPContext {int num_tracks; struct track** tracks; } ;

/* Variables and functions */
 int STREAM_TYPE_COUNT ; 
 char* FUNC0 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char *FUNC2(struct MPContext *mpctx)
{
    char *h = FUNC1(NULL, "");
    for (int type = 0; type < STREAM_TYPE_COUNT; type++) {
        for (int n = 0; n < mpctx->num_tracks; n++) {
            struct track *track = mpctx->tracks[n];
            if (track->type != type)
                continue;
            h = FUNC0(h, "%d-%d-%d-%d-%s\n", type,
                    track->user_tid, track->default_track, track->is_external,
                    track->lang ? track->lang : "");
        }
    }
    return h;
}