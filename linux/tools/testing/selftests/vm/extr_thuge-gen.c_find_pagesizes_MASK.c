#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int gl_pathc; int /*<<< orphan*/ * gl_pathv; } ;
typedef  TYPE_1__ glob_t ;

/* Variables and functions */
 int NUM_PAGESIZES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int num_page_sizes ; 
 int* page_sizes ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 

void FUNC5(void)
{
	glob_t g;
	int i;
	FUNC1("/sys/kernel/mm/hugepages/hugepages-*kB", 0, NULL, &g);
	FUNC0(g.gl_pathc <= NUM_PAGESIZES);
	for (i = 0; i < g.gl_pathc; i++) {
		FUNC4(g.gl_pathv[i], "/sys/kernel/mm/hugepages/hugepages-%lukB",
				&page_sizes[i]);
		page_sizes[i] <<= 10;
		FUNC3("Found %luMB\n", page_sizes[i] >> 20);
	}
	num_page_sizes = g.gl_pathc;
	FUNC2(&g);
}