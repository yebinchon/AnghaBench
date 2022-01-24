#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_15__ {int /*<<< orphan*/  reg; TYPE_4__* esil; } ;
struct TYPE_14__ {int exectrap; void* cmd_step_out; void* cmd_step; int /*<<< orphan*/  cmd; void* verbose; } ;
struct TYPE_13__ {int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; } ;
struct TYPE_12__ {scalar_t__ has_va; } ;
struct TYPE_11__ {TYPE_8__* anal; int /*<<< orphan*/  offset; int /*<<< orphan*/  bin; int /*<<< orphan*/  config; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RBinInfo ;
typedef  TYPE_3__ RBinAddr ;
typedef  TYPE_4__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_NAME_PC ; 
 int /*<<< orphan*/  UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__* FUNC1 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_8__*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  r_core_esil_cmd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (char const*) ; 

__attribute__((used)) static ut64 FUNC14(RCore *core) {
	const char *name = FUNC11 (core->anal->reg, R_REG_NAME_PC);
	int romem = FUNC6 (core->config, "esil.romem");
	int stats = FUNC6 (core->config, "esil.stats");
	int iotrap = FUNC6 (core->config, "esil.iotrap");
	int exectrap = FUNC6 (core->config, "esil.exectrap");
	int stacksize = FUNC6 (core->config, "esil.stack.depth");
	int noNULL = FUNC6 (core->config, "esil.noNULL");
	unsigned int addrsize = FUNC6 (core->config, "esil.addr.size");
	if (!(core->anal->esil = FUNC1 (stacksize, iotrap, addrsize))) {
		return UT64_MAX;
	}
	ut64 addr;
	RAnalEsil *esil = core->anal->esil;
	esil->verbose = FUNC6 (core->config, "esil.verbose");
	esil->cmd = r_core_esil_cmd;
	FUNC2 (esil, core->anal, romem, stats, noNULL); // setup io
	{
		const char *cmd_esil_step = FUNC5 (core->config, "cmd.esil.step");
		if (cmd_esil_step && *cmd_esil_step) {
			esil->cmd_step = FUNC13 (cmd_esil_step);
		}
		const char *cmd_esil_step_out = FUNC5 (core->config, "cmd.esil.stepout");
		if (cmd_esil_step_out && *cmd_esil_step_out) {
			esil->cmd_step_out = FUNC13 (cmd_esil_step_out);
		}
		{
			const char *s = FUNC5 (core->config, "cmd.esil.intr");
			if (s) {
				char *my = FUNC13 (s);
				if (my) {
					FUNC7 (core->config, "cmd.esil.intr", my);
					FUNC0 (my);
				}
			}
		}
	}
	esil->exectrap = exectrap;
	RList *entries = FUNC3 (core->bin);
	RBinAddr *entry = NULL;
	RBinInfo *info = NULL;
	if (entries && !FUNC8 (entries)) {
		entry = (RBinAddr *)FUNC9 (entries);
		info = FUNC4 (core->bin);
		addr = info->has_va? entry->vaddr: entry->paddr;
		FUNC10 (entries, entry);
	} else {
		addr = core->offset;
	}
	FUNC12 (core->anal->reg, name, addr);
	// set memory read only
	return addr;
}