#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
struct TYPE_13__ {int pc; } ;
struct TYPE_12__ {scalar_t__ esil; int /*<<< orphan*/  cpu; } ;
struct TYPE_11__ {int size; } ;
typedef  int /*<<< orphan*/  RAnalOpMask ;
typedef  TYPE_1__ RAnalOp ;
typedef  TYPE_2__ RAnal ;
typedef  TYPE_3__ CPU_MODEL ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_CONST_PARAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
	CPU_MODEL *cpu;
	ut64 offset;

	// init op
	if (!op) {
		return 2;
	}

	// select cpu info
	cpu = FUNC3 (anal->cpu);

	// set memory layout registers
	if (anal->esil) {
		offset = 0;
		FUNC4 (anal->esil, "_prog", offset);

		offset += (1 << cpu->pc);
		FUNC4 (anal->esil, "_io", offset);

		offset += FUNC2 (FUNC1 (cpu, CPU_CONST_PARAM, "sram_start"));
		FUNC4 (anal->esil, "_sram", offset);

		offset += FUNC2 (FUNC1 (cpu, CPU_CONST_PARAM, "sram_size"));
		FUNC4 (anal->esil, "_eeprom", offset);

		offset += FUNC2 (FUNC1 (cpu, CPU_CONST_PARAM, "eeprom_size"));
		FUNC4 (anal->esil, "_page", offset);
	}
	// process opcode
	FUNC0 (anal, op, addr, buf, len, cpu);

	return op->size;
}