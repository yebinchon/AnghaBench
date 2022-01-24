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
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_7__ {int /*<<< orphan*/  esil; } ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ RAnalEsilOp ;
typedef  TYPE_2__ EsilCfgGen ;

/* Variables and functions */
 scalar_t__ R_ANAL_ESIL_OP_TYPE_CONTROL_FLOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

bool FUNC4 (void *user, void *data, ut32 id) {
	EsilCfgGen *gen = (EsilCfgGen *)user;
	char *atom = (char *)data;
	RAnalEsilOp *op = FUNC2 (gen->esil, atom);
	if (op && op->type == R_ANAL_ESIL_OP_TYPE_CONTROL_FLOW) {
		if (!FUNC3 ("BREAK", atom)) {
			FUNC0 (gen, id);
		}
		if (!FUNC3 ("GOTO", atom)) {
			FUNC1 (gen, id);
		}
	}
	return true;
}