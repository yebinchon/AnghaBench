#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  reg; int /*<<< orphan*/  iob; } ;
typedef  TYPE_1__ RAnal ;

/* Variables and functions */
 int PIC_MIDRANGE_ESIL_CSTACK_TOP ; 
 int PIC_MIDRANGE_ESIL_SRAM_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  mem_sram ; 
 int /*<<< orphan*/  mem_stack ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC2 (RAnal *anal, bool force) {
	static bool init_done = false;

	if (!init_done || force) {
		// Allocate memory as needed.
		// We assume that code is already allocated with firmware
		// image
		mem_sram =
			FUNC0 (&anal->iob, mem_sram,
					PIC_MIDRANGE_ESIL_SRAM_START, 0x1000);
		mem_stack =
			FUNC0 (&anal->iob, mem_stack,
					PIC_MIDRANGE_ESIL_CSTACK_TOP, 0x20);

		FUNC1 (anal->reg, "_sram",
					PIC_MIDRANGE_ESIL_SRAM_START);
		FUNC1 (anal->reg, "_stack",
					PIC_MIDRANGE_ESIL_CSTACK_TOP);
		FUNC1 (anal->reg, "stkptr", 0x1f);

		init_done = true;
	}
}