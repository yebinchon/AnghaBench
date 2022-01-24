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
struct MPContext {int num_tracks; int /*<<< orphan*/ * tracks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ) ; 

void FUNC1(struct MPContext *mpctx)
{
    for (int n = 0; n < mpctx->num_tracks; n++)
        FUNC0(mpctx, mpctx->tracks[n]);
}