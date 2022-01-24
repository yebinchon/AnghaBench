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
 int /*<<< orphan*/  CHILD_THREAD_MIN_WAIT ; 
 int /*<<< orphan*/  SYS_gettid ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(void *priv)
{
	FUNC1("Child Thread: starting. pid %d tid %d ; and sleeping\n",
			FUNC0(), FUNC3(SYS_gettid));
	FUNC2(CHILD_THREAD_MIN_WAIT);
	FUNC1("Child Thread: DONE. pid %d tid %d\n", FUNC0(), FUNC3(SYS_gettid));
	return NULL;
}