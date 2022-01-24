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
typedef  int /*<<< orphan*/  PGSemaphore ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(PGSemaphore sema)
{
	/*
	 * There's no direct API for this in Win32, so we have to ratchet the
	 * semaphore down to 0 with repeated trylock's.
	 */
	while (FUNC0(sema))
		 /* loop */ ;
}