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
struct MPContext {scalar_t__ stop_play; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 

__attribute__((used)) static void FUNC4(struct MPContext *mpctx, char *name)
{
    FUNC1(mpctx, name);

    while (!FUNC2(mpctx, name)) {
        FUNC3(mpctx);

        // We have no idea what blocks a hook, so just do a full abort.
        if (mpctx->stop_play)
            FUNC0(mpctx);
    }
}