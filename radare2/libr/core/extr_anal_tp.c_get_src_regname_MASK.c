#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_13__ {int bits; int /*<<< orphan*/  reg; } ;
struct TYPE_12__ {int /*<<< orphan*/  esil; } ;
struct TYPE_11__ {TYPE_4__* anal; } ;
struct TYPE_10__ {int size; } ;
typedef  TYPE_1__ RRegItem ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RAnalOp ;
typedef  TYPE_4__ RAnal ;

/* Variables and functions */
 int R_ANAL_OP_MASK_ESIL ; 
 int R_ANAL_OP_MASK_VAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 char const* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static void FUNC10(RCore *core, ut64 addr, char *regname, int size) {
	RAnal *anal = core->anal;
	RAnalOp *op = FUNC3 (core, addr, R_ANAL_OP_MASK_VAL | R_ANAL_OP_MASK_ESIL);
	if (!op) {
		return;
	}
	char *op_esil = FUNC8 (FUNC6 (&op->esil));
	char *tmp = FUNC7 (op_esil, ',');
	if (tmp) {
		*tmp = '\0';
	}
	FUNC1 (regname, 0, size);
	RRegItem *ri = FUNC5 (anal->reg, op_esil, -1);
	if (ri) {
		if ((anal->bits == 64) && (ri->size == 32)) {
			const char *reg = FUNC4 (anal->reg, op_esil);
			if (reg) {
				FUNC0 (op_esil);
				op_esil = FUNC8 (reg);
			}
		}
		FUNC9 (regname, op_esil, size - 1);
	}
	FUNC0 (op_esil);
	FUNC2 (op);
}