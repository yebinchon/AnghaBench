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
typedef  int ut64 ;
struct TYPE_7__ {TYPE_1__* anal; } ;
struct TYPE_6__ {int /*<<< orphan*/  cpu; int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RAnalEsil ;
typedef  int /*<<< orphan*/  CPU_MODEL ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_CONST_PARAM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static bool FUNC6(RAnalEsil *esil) {
	CPU_MODEL *cpu;
	ut64 addr, page_size_bits, i;
	ut8 r0, r1;

	// sanity check
	if (!esil || !esil->anal || !esil->anal->reg) {
		return false;
	}

	// get target address, r0, r1
	if (!FUNC1(esil, &addr)) {
		return false;
	}

	if (!FUNC1 (esil, &i)) {
		return false;
	}
	r0 = i;

	if (!FUNC1 (esil, &i)) {
		return false;
	}
	r1 = i;

	// get details about current MCU and fix input address
	cpu = FUNC4 (esil->anal->cpu);
	page_size_bits = FUNC3 (FUNC2 (cpu, CPU_CONST_PARAM, "page_size"));

	// align and crop base address
	addr &= (FUNC0 (page_size_bits) ^ 1);

	// perform write to temporary page
	//eprintf ("SPM_PAGE_FILL bytes (%02x, %02x) @ 0x%08" PFMT64x ".\n", r1, r0, addr);
	FUNC5 (esil, addr++, &r0, 1);
	FUNC5 (esil, addr++, &r1, 1);

	return true;
}