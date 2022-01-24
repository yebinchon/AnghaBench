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
struct dr_helper {int /*<<< orphan*/  thread_lock; int /*<<< orphan*/  dr_in_flight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *ptr)
{
    struct dr_helper *dr = ptr;

    // All references must have been freed on destruction, or we'll have
    // dangling pointers.
    FUNC0(FUNC1(&dr->dr_in_flight) == 0);

    FUNC2(&dr->thread_lock);
}