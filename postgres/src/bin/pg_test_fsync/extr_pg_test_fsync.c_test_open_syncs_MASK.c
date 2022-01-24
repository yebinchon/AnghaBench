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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC1(FUNC0("\nCompare open_sync with different write sizes:\n"));
	FUNC1(FUNC0("(This is designed to compare the cost of writing 16kB in different write\n"
			 "open_sync sizes.)\n"));

	FUNC2(FUNC0(" 1 * 16kB open_sync write"), 16);
	FUNC2(FUNC0(" 2 *  8kB open_sync writes"), 8);
	FUNC2(FUNC0(" 4 *  4kB open_sync writes"), 4);
	FUNC2(FUNC0(" 8 *  2kB open_sync writes"), 2);
	FUNC2(FUNC0("16 *  1kB open_sync writes"), 1);
}