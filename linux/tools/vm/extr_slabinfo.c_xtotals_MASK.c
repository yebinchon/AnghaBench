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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	char *heading, *underline;

	FUNC4();

	FUNC1();
	FUNC3();

	heading = "\nSlabs sorted by size\n";
	underline = "--------------------\n";
	FUNC0(heading, underline, 0, 1, 0);

	heading = "\nSlabs sorted by loss\n";
	underline = "--------------------\n";
	FUNC0(heading, underline, 1, 0, 0);

	heading = "\nSlabs sorted by number of partial slabs\n";
	underline = "---------------------------------------\n";
	FUNC0(heading, underline, 0, 0, 1);

	FUNC2("\n");
}