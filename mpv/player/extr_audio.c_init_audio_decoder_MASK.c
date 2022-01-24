#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct track {int /*<<< orphan*/ * sink; TYPE_1__* dec; scalar_t__ ao_c; int /*<<< orphan*/  stream; } ;
struct MPContext {int /*<<< orphan*/  filter_root; } ;
struct TYPE_3__ {int try_spdif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,struct track*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct MPContext *mpctx, struct track *track)
{
    FUNC0(!track->dec);
    if (!track->stream)
        goto init_error;

    track->dec = FUNC2(mpctx->filter_root, track->stream);
    if (!track->dec)
        goto init_error;

    if (track->ao_c)
        track->dec->try_spdif = true;

    if (!FUNC3(track->dec))
        goto init_error;

    return 1;

init_error:
    if (track->sink)
        FUNC4(track->sink);
    track->sink = NULL;
    FUNC1(mpctx, track);
    return 0;
}