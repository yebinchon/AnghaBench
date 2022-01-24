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

void FUNC1(char *s1, char *s2, int n, char *test_name)
{
	int i;

	FUNC0("  %s: unexpected result:\n", test_name);
	FUNC0("    mem:");
	for (i = 0; i < n; i++)
		FUNC0(" %02x", s1[i]);
	FUNC0("\n");
	FUNC0("    ci: ");
	for (i = 0; i < n; i++)
		FUNC0(" %02x", s2[i]);
	FUNC0("\n");
}