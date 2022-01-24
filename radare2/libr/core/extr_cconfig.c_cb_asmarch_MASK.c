#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_16__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  asmparser ;
struct TYPE_23__ {char* value; } ;
struct TYPE_22__ {TYPE_16__* anal; int /*<<< orphan*/  config; TYPE_13__* assembler; TYPE_2__* print; int /*<<< orphan*/  bin; int /*<<< orphan*/  dbg; int /*<<< orphan*/  egg; } ;
struct TYPE_21__ {int big_endian; } ;
struct TYPE_20__ {char* cpus; int bits; } ;
struct TYPE_19__ {int bits; int /*<<< orphan*/  sdb_types; int /*<<< orphan*/  syscall; } ;
struct TYPE_18__ {int /*<<< orphan*/  bits; TYPE_1__* cur; } ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_ARCHINFO_ALIGN ; 
 int R_SYS_BITS ; 
 int /*<<< orphan*/  R_SYS_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_16__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_13__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_13__*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 char const* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char const*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,char*) ; 
 char* FUNC21 (char*,char) ; 
 char* FUNC22 (char const*) ; 
 int FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static bool FUNC27(void *user, void *data) {
	char asmparser[32];
	RCore *core = (RCore *) user;
	RConfigNode *node = (RConfigNode *) data;
	const char *asmos = NULL;
	int bits = R_SYS_BITS;
	if (!*node->value || !core || !core->assembler) {
		return false;
	}
	asmos = FUNC9 (core->config, "asm.os");
	if (core && core->anal && core->anal->bits) {
		bits = core->anal->bits;
	}
	if (node->value[0] == '?') {
		FUNC25 (core, node);
		if (FUNC23 (node->value) > 1 && node->value[1] == '?') {
			/* print more verbose help instead of plain option values */
			FUNC19 (core, NULL, node->value[1]);
			return false;
		} else {
			FUNC3 (node);
			return false;
		}
	}
	FUNC17 (core->egg, node->value, bits, 0, R_SYS_OS);

	if (!FUNC7 (core->assembler, node->value)) {
		FUNC1 ("asm.arch: cannot find (%s)\n", node->value);
		return false;
	}
	//we should strdup here otherwise will crash if any r_config_set
	//free the old value
	char *asm_cpu = FUNC22 (FUNC9 (core->config, "asm.cpu"));
	if (core->assembler->cur) {
		const char *newAsmCPU = core->assembler->cur->cpus;
		if (newAsmCPU) {
			if (*newAsmCPU) {
				char *nac = FUNC22 (newAsmCPU);
				char *comma = FUNC21 (nac, ',');
				if (comma) {
					if (!*asm_cpu || (*asm_cpu && !FUNC24(nac, asm_cpu))) {
						*comma = 0;
						FUNC12 (core->config, "asm.cpu", nac);
					}
				}
				FUNC2 (nac);
			} else {
				FUNC12 (core->config, "asm.cpu", "");
			}
		}
		bits = core->assembler->cur->bits;
		if (8 & bits) {
			bits = 8;
		} else if (16 & bits) {
			bits = 16;
		} else if (32 & bits) {
			bits = 32;
		} else {
			bits = 64;
		}
	}
	FUNC20 (asmparser, sizeof (asmparser), "%s.pseudo", node->value);
	FUNC12 (core->config, "asm.parser", asmparser);
	if (core->assembler->cur && core->anal &&
	    !(core->assembler->cur->bits & core->anal->bits)) {
		FUNC13 (core->config, "asm.bits", bits);
	}

	//r_debug_set_arch (core->dbg, r_sys_arch_id (node->value), bits);
	FUNC16 (core->dbg, node->value, bits);
	if (!FUNC12 (core->config, "anal.arch", node->value)) {
		char *p, *s = FUNC22 (node->value);
		if (s) {
			p = FUNC21 (s, '.');
			if (p) {
				*p = 0;
			}
			if (!FUNC12 (core->config, "anal.arch", s)) {
				/* fall back to the anal.null plugin */
				FUNC12 (core->config, "anal.arch", "null");
			}
			FUNC2 (s);
		}
	}
	// set pcalign
	if (core->anal) {
		const char *asmcpu = FUNC9 (core->config, "asm.cpu");
		if (!FUNC18 (core->anal->syscall, node->value, core->anal->bits, asmcpu, asmos)) {
			//eprintf ("asm.arch: Cannot setup syscall '%s/%s' from '%s'\n",
			//	node->value, asmos, R2_LIBDIR"/radare2/"R2_VERSION"/syscall");
		}
	}
	//if (!strcmp (node->value, "bf"))
	//	r_config_set (core->config, "dbg.backend", "bf");
	FUNC0 (core->config, node->value, core->assembler->bits);

	// set a default endianness
	int bigbin = FUNC8 (core->bin);
	if (bigbin == -1 /* error: no endianness detected in binary */) {
		bigbin = FUNC10 (core->config, "cfg.bigendian");
	}

	// try to set endian of RAsm to match binary
	FUNC5 (core->assembler, bigbin);
	// set endian of display to match binary
	core->print->big_endian = bigbin;

	FUNC6 (core->assembler, asm_cpu);
	FUNC2 (asm_cpu);
	RConfigNode *asmcpu = FUNC11 (core->config, "asm.cpu");
	if (asmcpu) {
		FUNC26 (core, asmcpu);
	}
	{
		int v = FUNC4 (core->anal, R_ANAL_ARCHINFO_ALIGN);
		if (v != -1) {
			FUNC13 (core->config, "asm.pcalign", v);
		} else {
			FUNC13 (core->config, "asm.pcalign", 0);
		}
	}
	/* reload types and cc info */
	// changing asm.arch changes anal.arch
	// changing anal.arch sets types db
	// so ressetting is redundant and may lead to bugs
	// 1 case this is usefull is when sdb_types is null
	if (!core->anal || !core->anal->sdb_types) {
		FUNC15 (core);
	}
	FUNC14 (core);
	return true;
}