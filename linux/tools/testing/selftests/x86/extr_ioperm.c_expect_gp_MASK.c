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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short) ; 
 scalar_t__ FUNC2 (unsigned short) ; 

__attribute__((used)) static void FUNC3(unsigned short port)
{
	if (FUNC2(port)) {
		FUNC1("[FAIL]\toutb to 0x%02hx worked\n", port);
		FUNC0(1);
	}

	FUNC1("[OK]\toutb to 0x%02hx failed\n", port);
}