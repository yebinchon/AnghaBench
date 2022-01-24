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
 int iterations ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  sigalrm_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void *FUNC4(void *arg)
{
	FUNC2(SIGALRM, sigalrm_handler);
	FUNC0(1);

	while (1) {
		FUNC1();
		FUNC3();

		iterations += 2;
	}

	return NULL;
}