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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(unsigned long ps)
{
	char buf[100];
	if (ps == FUNC1())
		return;
	FUNC2("%luMB: ", ps >> 20);
	FUNC0(stdout);
	FUNC3(buf, sizeof buf,
		"cat /sys/kernel/mm/hugepages/hugepages-%lukB/free_hugepages",
		ps >> 10);
	FUNC4(buf);
}