#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* gpr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ signal_regs ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long i;

	for (i = 15; i <= 29; i++)
		FUNC0(signal_regs.gpr[i] != FUNC1(i));

	FUNC2("Regs OK\n");
	return 0;
}