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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(char *prog)
{
	FUNC0("Usage: %s [options]\n", prog);
	FUNC0("  -d	Enable debug error output\n");
	FUNC0("\n");
	FUNC0("This test requires a POWER8 or POWER9 CPU and a usable ");
	FUNC0("framebuffer at /dev/fb0.\n");
}