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
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ do_fork ; 
 scalar_t__ do_vfork ; 
 int /*<<< orphan*/  sigalrm_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(void *arg)
{
	FUNC4(SIGALRM, sigalrm_handler);
	FUNC0(1);

	if (do_fork)
		FUNC1();
	else if (do_vfork)
		FUNC3();
	else
		FUNC2();

	return NULL;
}