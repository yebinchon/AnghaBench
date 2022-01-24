#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_4__ {int /*<<< orphan*/  mnemonic; int /*<<< orphan*/  type; int /*<<< orphan*/  family; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RCore ;
typedef  TYPE_1__ RAnalOp ;

/* Variables and functions */
 int R_ANAL_OP_MASK_BASIC ; 
 int R_ANAL_OP_MASK_DISASM ; 
 int R_ANAL_OP_MASK_HINT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(RCore *core, Sdb *db, ut64 addr, int statsMode) {
	RAnalOp *op = FUNC3 (core, addr, R_ANAL_OP_MASK_BASIC | R_ANAL_OP_MASK_HINT | R_ANAL_OP_MASK_DISASM);
	if (!op) {
		return;
	}
	if (statsMode == 'f') {
		const char *family = FUNC0 (op->family);
		FUNC4 (db, family, 1, 0);
	} else if (statsMode == 'o') {
		const char *type = FUNC2 (op->type);
		FUNC4 (db, type, 1, 0);
	} else {
		char *mnem = FUNC5 (op->mnemonic);
		char *sp = FUNC6 (mnem, " ");
		if (sp) {
			*sp = 0;
			//memmove (mnem, sp + 1, strlen (sp));
		}
		FUNC4 (db, mnem, 1, 0);
	}
	//sdb_set (db, family, "1", 0);
	//r_cons_printf ("0x%08"PFMT64x" %s\n", addr, family);
	FUNC1 (op);
	// r_core_cmdf (core, "pd 1 @ 0x%08"PFMT64x"\n", addr);
}