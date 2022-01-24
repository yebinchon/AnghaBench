#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_16__ {int size; scalar_t__* op_str; int /*<<< orphan*/  mnemonic; } ;
typedef  TYPE_1__ cs_insn ;
struct TYPE_18__ {int bits; scalar_t__ syntax; scalar_t__* features; int /*<<< orphan*/  pc; } ;
struct TYPE_17__ {int size; char* buf_asm; } ;
typedef  TYPE_2__ RAsmOp ;
typedef  TYPE_3__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ARCH_X86 ; 
 int CS_MODE_16 ; 
 int CS_MODE_32 ; 
 int CS_MODE_64 ; 
 int /*<<< orphan*/  CS_OPT_DETAIL ; 
 int /*<<< orphan*/  CS_OPT_OFF ; 
 int /*<<< orphan*/  CS_OPT_ON ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX_ATT ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX_INTEL ; 
 int /*<<< orphan*/  CS_OPT_SYNTAX_MASM ; 
 int /*<<< orphan*/  CS_OPT_UNSIGNED ; 
 scalar_t__ R_ASM_SYNTAX_ATT ; 
 scalar_t__ R_ASM_SYNTAX_JZ ; 
 scalar_t__ R_ASM_SYNTAX_MASM ; 
 int cd ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 TYPE_1__* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ n ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 
 char* FUNC14 (char**) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 char* FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 char* FUNC21 (char*,char*) ; 

__attribute__((used)) static int FUNC22(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
	static int omode = 0;
	int mode, ret;
	ut64 off = a->pc;

	mode =  (a->bits == 64)? CS_MODE_64:
		(a->bits == 32)? CS_MODE_32:
		(a->bits == 16)? CS_MODE_16: 0;
	if (cd && mode != omode) {
		FUNC1 (&cd);
		cd = 0;
	}
	if (op) {
		op->size = 0;
	}
	omode = mode;
	if (cd == 0) {
		ret = FUNC6 (CS_ARCH_X86, mode, &cd);
		if (ret) {
			return 0;
		}
	}
	if (a->features && *a->features) {
		FUNC7 (cd, CS_OPT_DETAIL, CS_OPT_ON);
	} else {
		FUNC7 (cd, CS_OPT_DETAIL, CS_OPT_OFF);
	}
	// always unsigned immediates (kernel addresses)
	// maybe r2 should have an option for this too?
#if CS_API_MAJOR >= 4
	cs_option (cd, CS_OPT_UNSIGNED, CS_OPT_ON);
#endif
	if (a->syntax == R_ASM_SYNTAX_MASM) {
#if CS_API_MAJOR >= 4
		cs_option (cd, CS_OPT_SYNTAX, CS_OPT_SYNTAX_MASM);
#endif
	} else if (a->syntax == R_ASM_SYNTAX_ATT) {
		FUNC7 (cd, CS_OPT_SYNTAX, CS_OPT_SYNTAX_ATT);
	} else {
		FUNC7 (cd, CS_OPT_SYNTAX, CS_OPT_SYNTAX_INTEL);
	}
	if (!op) {
		return true;
	}
	op->size = 1;
	cs_insn *insn = NULL;
#if USE_ITER_API
	{
		size_t size = len;
		if (!insn || cd < 1) {
			insn = cs_malloc (cd);
		}
		if (!insn) {
			cs_free (insn, n);
			return 0;
		}
		memset (insn, 0, insn->size);
		insn->size = 1;
		n = cs_disasm_iter (cd, (const uint8_t**)&buf, &size, (uint64_t*)&off, insn);
	}
#else
	n = FUNC2 (cd, (const ut8*)buf, len, off, 1, &insn);
#endif
	if (op) {
		op->size = 0;
	}
	if (a->features && *a->features) {
		if (!FUNC0 (a, insn)) {
			op->size = insn->size;
			FUNC13 (op, "illegal");
		}
	}
	if (op->size == 0 && n > 0 && insn->size > 0) {
		char *ptrstr;
		op->size = insn->size;
		char *buf_asm = FUNC15 ("%s%s%s",
				insn->mnemonic, insn->op_str[0]?" ":"",
				insn->op_str);
		ptrstr = FUNC21 (buf_asm, "ptr ");
		if (ptrstr) {
			FUNC11 (ptrstr, ptrstr + 4, FUNC19 (ptrstr + 4) + 1);
		}
		FUNC13 (op, buf_asm);
	} else {
		FUNC8 (a, op, buf, len);
	}
	if (a->syntax == R_ASM_SYNTAX_JZ) {
		char *buf_asm = FUNC14 (&op->buf_asm);
		if (!FUNC20 (buf_asm, "je ", 3)) {
			FUNC10 (buf_asm, "jz", 2);
		} else if (!FUNC20 (buf_asm, "jne ", 4)) {
			FUNC10 (buf_asm, "jnz", 3);
		}
	}
#if 0
	// [eax + ebx*4]  =>  [eax + ebx * 4]
	char *ast = strchr (op->buf_asm, '*');
	if (ast && ast > op->buf_asm) {
		ast--;
		if (ast[0] != ' ') {
			char *tmp = strdup (ast + 1);
			if (tmp) {
				ast[0] = ' ';
				if (tmp[0] && tmp[1] && tmp[1] != ' ') {
					strcpy (ast, " * ");
					strcpy (ast + 3, tmp + 1);
				} else {
					strcpy (ast + 1, tmp);
				}
				free (tmp);
			}
		}
	}
#endif
#if USE_ITER_API
	/* do nothing because it should be allocated once and freed in the_end */
#else
	if (insn) {
		FUNC4 (insn, n);
	}
#endif
	return op->size;
}