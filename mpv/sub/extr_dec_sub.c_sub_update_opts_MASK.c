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
struct dec_sub {int /*<<< orphan*/  lock; int /*<<< orphan*/  opts_cache; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dec_sub*) ; 

void FUNC4(struct dec_sub *sub)
{
    FUNC1(&sub->lock);
    if (FUNC0(sub->opts_cache))
        FUNC3(sub);
    FUNC2(&sub->lock);
}