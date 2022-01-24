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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ free_called ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oom_free ; 
 int /*<<< orphan*/  oom_malloc ; 

__attribute__((used)) static void FUNC3()
{
    free_called = 0;
    FUNC2(oom_malloc, oom_free);
    FUNC0();

    if (free_called == 0)
        FUNC1("Allocation with OOM failed");
}