#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {int bits; int /*<<< orphan*/ * cur; } ;
struct TYPE_19__ {int bits; int /*<<< orphan*/  bp; int /*<<< orphan*/  reg; TYPE_3__* h; } ;
struct TYPE_18__ {int i_value; } ;
struct TYPE_17__ {int /*<<< orphan*/  config; TYPE_10__* anal; TYPE_6__* dbg; TYPE_1__* print; TYPE_9__* assembler; } ;
struct TYPE_16__ {char* (* reg_profile ) (TYPE_6__*) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  arch; } ;
struct TYPE_14__ {int bits; } ;
struct TYPE_13__ {int bits; int /*<<< orphan*/  syscall; int /*<<< orphan*/  reg; TYPE_2__* cur; } ;
typedef  TYPE_4__ RCore ;
typedef  TYPE_5__ RConfigNode ;
typedef  int /*<<< orphan*/  RAsmPlugin ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_ARCHINFO_ALIGN ; 
 int R_SYS_BITS_32 ; 
 int R_SYS_BITS_64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*) ; 
 int FUNC6 (TYPE_9__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,int,char const*,char const*) ; 
 char* FUNC16 (TYPE_6__*) ; 

__attribute__((used)) static bool FUNC17(void *user, void *data) {
	RCore *core = (RCore *) user;
	RConfigNode *node = (RConfigNode *) data;
	int ret = 0;
	if (!core) {
		FUNC1 ("user can't be NULL\n");
		return false;
	}

	int bits = node->i_value;
#if 0
// TODO: pretty good optimization, but breaks many tests when arch is different i think
	if (bits == core->assembler->bits && bits == core->anal->bits && bits == core->dbg->bits) {
		// early optimization
		return true;
	}
#endif
	if (bits > 0) {
		ret = FUNC6 (core->assembler, bits);
		if (!ret) {
			RAsmPlugin *h = core->assembler->cur;
			if (!h) {
				FUNC1 ("e asm.bits: Cannot set value, no plugins defined yet\n");
				ret = true;
			}
			// else { eprintf ("Cannot set bits %d to '%s'\n", bits, h->name); }
		}
		if (!FUNC4 (core->anal, bits)) {
			FUNC1 ("asm.arch: Cannot setup '%d' bits analysis engine\n", bits);
		}
		core->print->bits = bits;
	}
	if (core->dbg && core->anal && core->anal->cur) {
		FUNC13 (core->dbg, core->anal->cur->arch, bits);
		bool load_from_debug = FUNC10 (core->config, "cfg.debug");
		if (load_from_debug) {
			if (core->dbg->h && core->dbg->h->reg_profile) {
// XXX. that should depend on the plugin, not the host os
#if __WINDOWS__
#if !defined(_WIN64)
				core->dbg->bits = R_SYS_BITS_32;
#else
				core->dbg->bits = R_SYS_BITS_64;
#endif
#endif
				char *rp = core->dbg->h->reg_profile (core->dbg);
				FUNC14 (core->dbg->reg, rp);
				FUNC14 (core->anal->reg, rp);
				FUNC2 (rp);
			}
		} else {
			(void)FUNC5 (core->anal);
		}
	}
	FUNC12 (core);
	const char *asmos = FUNC9 (core->config, "asm.os");
	const char *asmarch = FUNC9 (core->config, "asm.arch");
	const char *asmcpu = FUNC9 (core->config, "asm.cpu");
	if (core->anal) {
		if (!FUNC15 (core->anal->syscall, asmarch, bits, asmcpu, asmos)) {
			//eprintf ("asm.arch: Cannot setup syscall '%s/%s' from '%s'\n",
			//	node->value, asmos, R2_LIBDIR"/radare2/"R2_VERSION"/syscall");
		}
		FUNC0 (core->config, asmarch, core->anal->bits);
		if (core->dbg) {
			FUNC8 (core->dbg->bp, asmarch, core->anal->bits);
			FUNC11 (core->config, "dbg.bpsize", FUNC7 (core->dbg->bp));
		}
	}
	/* set pcalign */
	{
		int v = FUNC3 (core->anal, R_ANAL_ARCHINFO_ALIGN);
		FUNC11 (core->config, "asm.pcalign", (v != -1)? v: 0);
	}
	return ret;
}