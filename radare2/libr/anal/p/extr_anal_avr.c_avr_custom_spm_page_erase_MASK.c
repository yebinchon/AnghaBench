#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
typedef  unsigned long long ut64 ;
struct TYPE_7__ {TYPE_1__* anal; } ;
struct TYPE_6__ {int /*<<< orphan*/  cpu; int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RAnalEsil ;
typedef  int /*<<< orphan*/  CPU_MODEL ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_CONST_PARAM ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned long long,int*,int) ; 

__attribute__((used)) static bool FUNC7(RAnalEsil *esil) {
	CPU_MODEL *cpu;
	ut8 c;
	ut64 addr, page_size_bits, i;

	// sanity check
	if (!esil || !esil->anal || !esil->anal->reg) {
		return false;
	}

	// get target address
	if (!FUNC2(esil, &addr)) {
		return false;
	}

	// get details about current MCU and fix input address
	cpu = FUNC5 (esil->anal->cpu);
	page_size_bits = FUNC4 (FUNC3 (cpu, CPU_CONST_PARAM, "page_size"));

	// align base address to page_size_bits
	addr &= ~(FUNC1 (page_size_bits));

	// perform erase
	//eprintf ("SPM_PAGE_ERASE %ld bytes @ 0x%08" PFMT64x ".\n", page_size, addr);
	c = 0xff;
	for (i = 0; i < (1ULL << page_size_bits); i++) {
		FUNC6 (
			esil, (addr + i) & FUNC0 (cpu), &c, 1);
	}

	return true;
}