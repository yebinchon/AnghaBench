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
typedef  int sljit_uw ;
typedef  int sljit_sw ;
typedef  int /*<<< orphan*/  sljit_s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ADDI ; 
 int ADDIS ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int ORI ; 
 int ORIS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int SIMM_MAX ; 
 int SIMM_MIN ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  SLJIT_SUCCESS ; 
 int /*<<< orphan*/  TMP_ZERO ; 
 int /*<<< orphan*/  FUNC8 (struct sljit_compiler*,int) ; 

__attribute__((used)) static sljit_s32 FUNC9(struct sljit_compiler *compiler, sljit_s32 reg, sljit_sw imm)
{
	sljit_uw tmp;
	sljit_uw shift;
	sljit_uw tmp2;
	sljit_uw shift2;

	if (imm <= SIMM_MAX && imm >= SIMM_MIN)
		return FUNC8(compiler, ADDI | FUNC2(reg) | FUNC0(0) | FUNC4(imm));

	if (!(imm & ~0xffff))
		return FUNC8(compiler, ORI | FUNC6(TMP_ZERO) | FUNC0(reg) | FUNC4(imm));

	if (imm <= 0x7fffffffl && imm >= -0x80000000l) {
		FUNC3(FUNC8(compiler, ADDIS | FUNC2(reg) | FUNC0(0) | FUNC4(imm >> 16)));
		return (imm & 0xffff) ? FUNC8(compiler, ORI | FUNC6(reg) | FUNC0(reg) | FUNC4(imm)) : SLJIT_SUCCESS;
	}

	/* Count leading zeroes. */
	tmp = (imm >= 0) ? imm : ~imm;
	FUNC1(tmp, shift);
	FUNC7(shift > 0);
	shift--;
	tmp = (imm << shift);

	if ((tmp & ~0xffff000000000000ul) == 0) {
		FUNC3(FUNC8(compiler, ADDI | FUNC2(reg) | FUNC0(0) | FUNC4(tmp >> 48)));
		shift += 15;
		return FUNC5(reg, shift);
	}

	if ((tmp & ~0xffffffff00000000ul) == 0) {
		FUNC3(FUNC8(compiler, ADDIS | FUNC2(reg) | FUNC0(0) | FUNC4(tmp >> 48)));
		FUNC3(FUNC8(compiler, ORI | FUNC6(reg) | FUNC0(reg) | FUNC4(tmp >> 32)));
		shift += 31;
		return FUNC5(reg, shift);
	}

	/* Cut out the 16 bit from immediate. */
	shift += 15;
	tmp2 = imm & ((1ul << (63 - shift)) - 1);

	if (tmp2 <= 0xffff) {
		FUNC3(FUNC8(compiler, ADDI | FUNC2(reg) | FUNC0(0) | FUNC4(tmp >> 48)));
		FUNC3(FUNC5(reg, shift));
		return FUNC8(compiler, ORI | FUNC6(reg) | FUNC0(reg) | tmp2);
	}

	if (tmp2 <= 0xffffffff) {
		FUNC3(FUNC8(compiler, ADDI | FUNC2(reg) | FUNC0(0) | FUNC4(tmp >> 48)));
		FUNC3(FUNC5(reg, shift));
		FUNC3(FUNC8(compiler, ORIS | FUNC6(reg) | FUNC0(reg) | (tmp2 >> 16)));
		return (imm & 0xffff) ? FUNC8(compiler, ORI | FUNC6(reg) | FUNC0(reg) | FUNC4(tmp2)) : SLJIT_SUCCESS;
	}

	FUNC1(tmp2, shift2);
	tmp2 <<= shift2;

	if ((tmp2 & ~0xffff000000000000ul) == 0) {
		FUNC3(FUNC8(compiler, ADDI | FUNC2(reg) | FUNC0(0) | FUNC4(tmp >> 48)));
		shift2 += 15;
		shift += (63 - shift2);
		FUNC3(FUNC5(reg, shift));
		FUNC3(FUNC8(compiler, ORI | FUNC6(reg) | FUNC0(reg) | (tmp2 >> 48)));
		return FUNC5(reg, shift2);
	}

	/* The general version. */
	FUNC3(FUNC8(compiler, ADDIS | FUNC2(reg) | FUNC0(0) | FUNC4(imm >> 48)));
	FUNC3(FUNC8(compiler, ORI | FUNC6(reg) | FUNC0(reg) | FUNC4(imm >> 32)));
	FUNC3(FUNC5(reg, 31));
	FUNC3(FUNC8(compiler, ORIS | FUNC6(reg) | FUNC0(reg) | FUNC4(imm >> 16)));
	return FUNC8(compiler, ORI | FUNC6(reg) | FUNC0(reg) | FUNC4(imm));
}