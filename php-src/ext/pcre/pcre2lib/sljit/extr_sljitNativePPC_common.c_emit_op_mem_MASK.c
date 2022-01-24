#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sljit_compiler {int dummy; } ;
typedef  int sljit_sw ;
typedef  size_t sljit_s32 ;
typedef  int sljit_ins ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int ADDIS ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int FUNC4 (int) ; 
 size_t INDEXED ; 
 int FUNC5 (int,size_t,size_t) ; 
 int INT_ALIGNED ; 
 size_t MEM_MASK ; 
 size_t FUNC6 (size_t) ; 
 size_t OFFS_REG_MASK ; 
 size_t REG_MASK ; 
 int FUNC7 (size_t,size_t,int,int,int) ; 
 int RLWINM ; 
 int FUNC8 (size_t) ; 
 int SIMM_MAX ; 
 int SIMM_MIN ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 size_t SLJIT_MEM ; 
 scalar_t__ FUNC10 (size_t) ; 
 int* data_transfer_insts ; 
 size_t FUNC11 (struct sljit_compiler*,size_t,int) ; 
 size_t FUNC12 (struct sljit_compiler*,int) ; 

__attribute__((used)) static sljit_s32 FUNC13(struct sljit_compiler *compiler, sljit_s32 inp_flags, sljit_s32 reg,
	sljit_s32 arg, sljit_sw argw, sljit_s32 tmp_reg)
{
	sljit_ins inst;
	sljit_s32 offs_reg;
	sljit_sw high_short;

	/* Should work when (arg & REG_MASK) == 0. */
	FUNC9(FUNC0(0) == 0);
	FUNC9(arg & SLJIT_MEM);

	if (FUNC10(arg & OFFS_REG_MASK)) {
		argw &= 0x3;
		offs_reg = FUNC6(arg);

		if (argw != 0) {
#if (defined SLJIT_CONFIG_PPC_32 && SLJIT_CONFIG_PPC_32)
			FAIL_IF(push_inst(compiler, RLWINM | S(OFFS_REG(arg)) | A(tmp_reg) | (argw << 11) | ((31 - argw) << 1)));
#else
			FUNC3(FUNC12(compiler, FUNC7(tmp_reg, FUNC6(arg), argw, 63 - argw, 1)));
#endif
			offs_reg = tmp_reg;
		}

		inst = data_transfer_insts[(inp_flags | INDEXED) & MEM_MASK];

#if (defined SLJIT_CONFIG_PPC_64 && SLJIT_CONFIG_PPC_64)
		SLJIT_ASSERT(!(inst & INT_ALIGNED));
#endif

		return FUNC12(compiler, FUNC5(inst, inp_flags, reg) | FUNC0(arg & REG_MASK) | FUNC1(offs_reg));
	}

	inst = data_transfer_insts[inp_flags & MEM_MASK];
	arg &= REG_MASK;

#if (defined SLJIT_CONFIG_PPC_64 && SLJIT_CONFIG_PPC_64)
	if ((inst & INT_ALIGNED) && (argw & 0x3) != 0) {
		FAIL_IF(load_immediate(compiler, tmp_reg, argw));

		inst = data_transfer_insts[(inp_flags | INDEXED) & MEM_MASK];
		return push_inst(compiler, INST_CODE_AND_DST(inst, inp_flags, reg) | A(arg) | B(tmp_reg));
	}
#endif

	if (argw <= SIMM_MAX && argw >= SIMM_MIN)
		return FUNC12(compiler, FUNC5(inst, inp_flags, reg) | FUNC0(arg) | FUNC4(argw));

#if (defined SLJIT_CONFIG_PPC_64 && SLJIT_CONFIG_PPC_64)
	if (argw <= 0x7fff7fffl && argw >= -0x80000000l) {
#endif

		high_short = (sljit_s32)(argw + ((argw & 0x8000) << 1)) & ~0xffff;

#if (defined SLJIT_CONFIG_PPC_64 && SLJIT_CONFIG_PPC_64)
		SLJIT_ASSERT(high_short && high_short <= 0x7fffffffl && high_short >= -0x80000000l);
#else
		FUNC9(high_short);
#endif

		FUNC3(FUNC12(compiler, ADDIS | FUNC2(tmp_reg) | FUNC0(arg) | FUNC4(high_short >> 16)));
		return FUNC12(compiler, FUNC5(inst, inp_flags, reg) | FUNC0(tmp_reg) | FUNC4(argw));

#if (defined SLJIT_CONFIG_PPC_64 && SLJIT_CONFIG_PPC_64)
	}

	/* The rest is PPC-64 only. */

	FAIL_IF(load_immediate(compiler, tmp_reg, argw));

	inst = data_transfer_insts[(inp_flags | INDEXED) & MEM_MASK];
	return push_inst(compiler, INST_CODE_AND_DST(inst, inp_flags, reg) | A(arg) | B(tmp_reg));
#endif
}