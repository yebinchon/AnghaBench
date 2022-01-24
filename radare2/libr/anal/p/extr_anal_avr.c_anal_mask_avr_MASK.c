#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
typedef  scalar_t__ ut64 ;
struct TYPE_12__ {int mask; } ;
struct TYPE_11__ {int /*<<< orphan*/  cpu; } ;
struct TYPE_10__ {int size; scalar_t__ ptr; scalar_t__ jump; } ;
typedef  TYPE_1__ RAnalOp ;
typedef  TYPE_2__ RAnal ;
typedef  TYPE_3__ OPCODE_DESC ;
typedef  int /*<<< orphan*/  CPU_MODEL ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 TYPE_3__* FUNC0 (TYPE_2__*,TYPE_1__*,scalar_t__,int const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 () ; 

__attribute__((used)) static ut8 *FUNC6(RAnal *anal, int size, const ut8 *data, ut64 at) {
	RAnalOp *op = NULL;
	ut8 *ret = NULL;
	int idx;

	if (!(op = FUNC5 ())) {
		return NULL;
	}

	if (!(ret = FUNC2 (size))) {
		FUNC4 (op);
		return NULL;
	}

	FUNC3 (ret, 0xff, size);

	CPU_MODEL *cpu = FUNC1 (anal->cpu);

	for (idx = 0; idx + 1 < size; idx += op->size) {
		OPCODE_DESC* opcode_desc = FUNC0 (anal, op, at + idx, data + idx, size - idx, cpu);

		if (op->size < 1) {
			break;
		}

		if (!opcode_desc) { // invalid instruction
			continue;
		}

		// the additional data for "long" opcodes (4 bytes) is usually something we want to ignore for matching
		// (things like memory offsets or jump addresses)
		if (op->size == 4) {
			ret[idx + 2] = 0;
			ret[idx + 3] = 0;
		}

		if (op->ptr != UT64_MAX || op->jump != UT64_MAX) {
			ret[idx] = opcode_desc->mask;
			ret[idx + 1] = opcode_desc->mask >> 8;
		}
	}

	FUNC4 (op);

	return ret;
}