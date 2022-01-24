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
struct playlist {int /*<<< orphan*/ * first; int /*<<< orphan*/ * current; } ;
struct MPOpts {scalar_t__ playlist_pos; scalar_t__ merge_files; scalar_t__ shuffle; } ;
struct MPContext {struct MPOpts* opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct playlist*) ; 
 int /*<<< orphan*/ * FUNC1 (struct MPContext*,struct playlist*) ; 
 int /*<<< orphan*/ * FUNC2 (struct playlist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct playlist*) ; 

void FUNC4(struct MPContext *mpctx, struct playlist *pl)
{
    struct MPOpts *opts = mpctx->opts;

    pl->current = NULL;

    if (opts->playlist_pos >= 0)
        pl->current = FUNC2(pl, opts->playlist_pos);

    if (opts->shuffle)
        FUNC3(pl);

    if (opts->merge_files)
        FUNC0(pl);

    if (!pl->current)
        pl->current = FUNC1(mpctx, pl);

    if (!pl->current)
        pl->current = pl->first;
}