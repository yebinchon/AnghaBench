#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_22__ {int relsub; int /*<<< orphan*/  relsub_addr; void* localvar_only; void* pseudo; } ;
struct TYPE_21__ {int flags; int /*<<< orphan*/  big_endian; } ;
struct TYPE_20__ {int /*<<< orphan*/  addr; } ;
struct TYPE_19__ {int /*<<< orphan*/  size; int /*<<< orphan*/  buf_asm; int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {TYPE_3__* cons; TYPE_7__* print; int /*<<< orphan*/  flags; TYPE_8__* parser; int /*<<< orphan*/  anal; int /*<<< orphan*/  assembler; int /*<<< orphan*/  io; int /*<<< orphan*/  config; } ;
struct TYPE_17__ {TYPE_2__* context; } ;
struct TYPE_15__ {int /*<<< orphan*/  num; int /*<<< orphan*/  reg; } ;
struct TYPE_16__ {TYPE_1__ pal; } ;
typedef  TYPE_4__ RCore ;
typedef  TYPE_5__ RAsmOp ;
typedef  int /*<<< orphan*/  RAnalHint ;
typedef  TYPE_6__ RAnalFunction ;

/* Variables and functions */
 int R_PRINT_FLAGS_COLOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 char* FUNC11 (TYPE_7__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC16(RCore *core, ut64 from, ut64 addr, RAnalFunction *fcn, bool color) {
	int has_color = core->print->flags & R_PRINT_FLAGS_COLOR;
	char str[512];
	const int size = 12;
	ut8 buf[12];
	RAsmOp asmop = {0};
	char *buf_asm = NULL;
	bool asm_varsub = FUNC7 (core->config, "asm.var.sub");
	core->parser->pseudo = FUNC7 (core->config, "asm.pseudo");
	core->parser->relsub = FUNC7 (core->config, "asm.relsub");
	core->parser->localvar_only = FUNC7 (core->config, "asm.var.subonly");

	if (core->parser->relsub) {
		core->parser->relsub_addr = from;
	}
	FUNC8 (core->io, addr, buf, size);
	FUNC6 (core->assembler, addr);
	FUNC4 (core->assembler, &asmop, buf, size);
	int ba_len = FUNC14 (&asmop.buf_asm) + 128;
	char *ba = FUNC1 (ba_len);
	FUNC15 (ba, FUNC13 (&asmop.buf_asm));
	if (asm_varsub) {
		FUNC10 (core->parser, fcn, addr, asmop.size,
				ba, ba, sizeof (asmop.buf_asm));
	}
	RAnalHint *hint = FUNC3 (core->anal, addr);
	FUNC9 (core->parser, addr, core->flags, hint,
			ba, str, sizeof (str), core->print->big_endian);
	FUNC2 (hint);
	FUNC5 (&asmop, ba);
	FUNC0 (ba);
	if (color && has_color) {
		buf_asm = FUNC11 (core->print, str,
				core->cons->context->pal.reg, core->cons->context->pal.num, false, fcn ? fcn->addr : 0);
	} else {
		buf_asm = FUNC12 (str);
	}
	return buf_asm;
}