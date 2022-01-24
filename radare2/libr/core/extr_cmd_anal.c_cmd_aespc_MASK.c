#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut64 ;
struct TYPE_16__ {int /*<<< orphan*/ * esil; } ;
struct TYPE_15__ {int /*<<< orphan*/  reg; } ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int const blocksize; int offset; TYPE_4__* dbg; TYPE_1__* search; TYPE_8__* anal; int /*<<< orphan*/  io; int /*<<< orphan*/  config; } ;
struct TYPE_12__ {int align; } ;
typedef  int /*<<< orphan*/  RRegItem ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RAnalOp ;
typedef  int /*<<< orphan*/  RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_ARCHINFO_MIN_OP_SIZE ; 
 int R_ANAL_OP_MASK_BASIC ; 
 int R_ANAL_OP_MASK_HINT ; 
 void* FUNC0 (int,int const) ; 
 int /*<<< orphan*/  R_REG_NAME_PC ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,unsigned int) ; 
 int FUNC6 (TYPE_8__*,TYPE_3__*,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int) ; 
 int FUNC12 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC17(RCore *core, ut64 addr, int off) {
	RAnalEsil *esil = core->anal->esil;
	int i, j = 0;
	int instr_size = 0;
	ut8 *buf;
	RAnalOp aop = {0};
	int ret , bsize = FUNC0 (64, core->blocksize);
	const int mininstrsz = FUNC4 (core->anal, R_ANAL_ARCHINFO_MIN_OP_SIZE);
	const int minopcode = FUNC0 (1, mininstrsz);
	const char *pc = FUNC15 (core->dbg->reg, R_REG_NAME_PC);
	RRegItem *r = FUNC14 (core->dbg->reg, pc, -1);
	int stacksize = FUNC8 (core->config, "esil.stack.depth");
	int iotrap = FUNC8 (core->config, "esil.iotrap");
	unsigned int addrsize = FUNC8 (core->config, "esil.addr.size");

	if (!esil) {
		if (!(esil = FUNC5 (stacksize, iotrap, addrsize))) {
			return;
		}
	}
	buf = FUNC3 (bsize);
	if (!buf) {
		FUNC1 ("Cannot allocate %d byte(s)\n", bsize);
		FUNC2 (buf);
		return;
	}
	if (addr == -1) {
		addr = FUNC12 (core->dbg, pc);
	}
	ut64 curpc = addr;
	ut64 oldoff = core->offset;
	for (i = 0, j = 0; j < off ; i++, j++) {
		if (FUNC9 ()) {
			break;
		}
		if (i >= (bsize - 32)) {
			i = 0;
		}
		if (!i) {
			FUNC13 (core->io, addr, buf, bsize);
		}
		ret = FUNC6 (core->anal, &aop, addr, buf + i, bsize - i, R_ANAL_OP_MASK_BASIC | R_ANAL_OP_MASK_HINT);
		instr_size += ret;
		int inc = (core->search->align > 0)? core->search->align - 1: ret - 1;
		if (inc < 0) {
			inc = minopcode;
		}
		i += inc;
		addr += inc;
		FUNC7 (&aop);
	}
	FUNC16 (core->dbg->reg, r, curpc);
	FUNC10 (core, curpc + instr_size, NULL, NULL, false);
	FUNC11 (core, oldoff, 1);
}