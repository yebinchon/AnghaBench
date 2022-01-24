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
typedef  union pipe {int dummy; } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (union pipe) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union pipe) ; 

__attribute__((used)) static int FUNC3(union pipe read_pipe, union pipe write_pipe)
{
	volatile int i = 0;

	/*
	 * We are just here to eat cpu and die. So make sure we can be killed,
	 * and also don't do any custom SIGTERM handling.
	 */
	FUNC1(SIGTERM, SIG_DFL);

	FUNC0(write_pipe);
	FUNC2(read_pipe);

	/* Soak up cpu forever */
	while (1) i++;

	return 0;
}