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
struct dr_helper {int thread_valid; int /*<<< orphan*/  thread_lock; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct dr_helper *dr)
{
    FUNC2(&dr->thread_lock);
    // Fails on API user errors.
    FUNC0(dr->thread_valid);
    FUNC0(FUNC1(dr->thread, FUNC4()));
    dr->thread_valid = false;
    FUNC3(&dr->thread_lock);
}