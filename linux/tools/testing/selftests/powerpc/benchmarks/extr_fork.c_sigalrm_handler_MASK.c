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
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long iterations ; 
 unsigned long iterations_prev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 scalar_t__ timeout ; 

__attribute__((used)) static void FUNC3(int junk)
{
	unsigned long i = iterations;

	FUNC2("%ld\n", i - iterations_prev);
	iterations_prev = i;

	if (--timeout == 0)
		FUNC1(0, SIGUSR1);

	FUNC0(1);
}