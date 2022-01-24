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
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPRN_TFHAR ; 
 int /*<<< orphan*/  SPRN_TFIAR ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int num_loops ; 
 scalar_t__ passed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC5(void *in)
{
	int i, cpu;
	unsigned long tfhar, tfhar_rd, tfiar, tfiar_rd;
	cpu_set_t cpuset;

	FUNC1(&cpuset);
	cpu = (unsigned long)in >> 1;
	FUNC0(cpu, &cpuset);
	FUNC4(0, sizeof(cpuset), &cpuset);

	/* TFIAR: Last bit has to be high so userspace can read register */
	tfiar = ((unsigned long)in) + 1;
	tfiar += 2;
	FUNC3(SPRN_TFIAR, tfiar);

	/* TFHAR: Last two bits are reserved */
	tfhar = ((unsigned long)in);
	tfhar &= ~0x3UL;
	tfhar += 4;
	FUNC3(SPRN_TFHAR, tfhar);

	for (i = 0; i < num_loops; i++)	{
		tfhar_rd = FUNC2(SPRN_TFHAR);
		tfiar_rd = FUNC2(SPRN_TFIAR);
		if ( (tfhar != tfhar_rd) || (tfiar != tfiar_rd) ) {
			passed = 0;
			return;
		}
	}
	return;
}