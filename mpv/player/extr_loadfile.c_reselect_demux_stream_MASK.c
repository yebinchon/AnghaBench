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
struct track {scalar_t__ type; int /*<<< orphan*/  selected; int /*<<< orphan*/  stream; int /*<<< orphan*/  demuxer; } ;
struct MPContext {struct track* seek_slave; } ;

/* Variables and functions */
 double MP_NOPTS_VALUE ; 
 scalar_t__ STREAM_SUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 double FUNC1 (struct MPContext*) ; 
 scalar_t__ FUNC2 (struct MPContext*,struct track*) ; 

void FUNC3(struct MPContext *mpctx, struct track *track)
{
    if (!track->stream)
        return;
    double pts = FUNC1(mpctx);
    if (pts != MP_NOPTS_VALUE) {
        pts += FUNC2(mpctx, track);
        if (track->type == STREAM_SUB)
            pts -= 10.0;
    }
    FUNC0(track->demuxer, track->stream, pts, track->selected);
    if (track == mpctx->seek_slave)
        mpctx->seek_slave = NULL;
}