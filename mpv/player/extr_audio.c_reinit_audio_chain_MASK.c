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
struct track {int /*<<< orphan*/  stream; } ;
struct MPContext {struct track*** current_track; } ;

/* Variables and functions */
 size_t STREAM_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 

void FUNC3(struct MPContext *mpctx)
{
    struct track *track = NULL;
    track = mpctx->current_track[0][STREAM_AUDIO];
    if (!track || !track->stream) {
        FUNC2(mpctx);
        FUNC0(mpctx, track);
        return;
    }
    FUNC1(mpctx, track);
}