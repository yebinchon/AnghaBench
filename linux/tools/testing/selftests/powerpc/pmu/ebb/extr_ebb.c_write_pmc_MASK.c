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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_PMC1 ; 
 int /*<<< orphan*/  SPRN_PMC2 ; 
 int /*<<< orphan*/  SPRN_PMC3 ; 
 int /*<<< orphan*/  SPRN_PMC4 ; 
 int /*<<< orphan*/  SPRN_PMC5 ; 
 int /*<<< orphan*/  SPRN_PMC6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(int pmc, u64 value)
{
	switch (pmc) {
		case 1: FUNC0(SPRN_PMC1, value); break;
		case 2: FUNC0(SPRN_PMC2, value); break;
		case 3: FUNC0(SPRN_PMC3, value); break;
		case 4: FUNC0(SPRN_PMC4, value); break;
		case 5: FUNC0(SPRN_PMC5, value); break;
		case 6: FUNC0(SPRN_PMC6, value); break;
	}
}