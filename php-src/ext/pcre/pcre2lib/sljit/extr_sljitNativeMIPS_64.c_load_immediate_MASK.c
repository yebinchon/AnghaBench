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
typedef  int sljit_s32 ;
typedef  int sljit_ins ;

/* Variables and functions */
 int ADDIU ; 
 int FUNC0 (int) ; 
 int DSLL ; 
 int DSLL32 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int LUI ; 
 int ORI ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int SIMM_MIN ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int SLJIT_SUCCESS ; 
 int FUNC6 (int) ; 
 int FUNC7 (struct sljit_compiler*,int,int) ; 

__attribute__((used)) static sljit_s32 FUNC8(struct sljit_compiler *compiler, sljit_s32 dst_ar, sljit_sw imm)
{
	sljit_s32 shift = 32;
	sljit_s32 shift2;
	sljit_s32 inv = 0;
	sljit_ins ins;
	sljit_uw uimm;

	if (!(imm & ~0xffff))
		return FUNC7(compiler, ORI | FUNC3(0) | FUNC6(dst_ar) | FUNC2(imm), dst_ar);

	if (imm < 0 && imm >= SIMM_MIN)
		return FUNC7(compiler, ADDIU | FUNC3(0) | FUNC6(dst_ar) | FUNC2(imm), dst_ar);

	if (imm <= 0x7fffffffl && imm >= -0x80000000l) {
		FUNC1(FUNC7(compiler, LUI | FUNC6(dst_ar) | FUNC2(imm >> 16), dst_ar));
		return (imm & 0xffff) ? FUNC7(compiler, ORI | FUNC3(dst_ar) | FUNC6(dst_ar) | FUNC2(imm), dst_ar) : SLJIT_SUCCESS;
	}

	/* Zero extended number. */
	uimm = imm;
	if (imm < 0) {
		uimm = ~imm;
		inv = 1;
	}

	while (!(uimm & 0xff00000000000000l)) {
		shift -= 8;
		uimm <<= 8;
	}

	if (!(uimm & 0xf000000000000000l)) {
		shift -= 4;
		uimm <<= 4;
	}

	if (!(uimm & 0xc000000000000000l)) {
		shift -= 2;
		uimm <<= 2;
	}

	if ((sljit_sw)uimm < 0) {
		uimm >>= 1;
		shift += 1;
	}
	FUNC5(((uimm & 0xc000000000000000l) == 0x4000000000000000l) && (shift > 0) && (shift <= 32));

	if (inv)
		uimm = ~uimm;

	FUNC1(FUNC7(compiler, LUI | FUNC6(dst_ar) | FUNC2(uimm >> 48), dst_ar));
	if (uimm & 0x0000ffff00000000l)
		FUNC1(FUNC7(compiler, ORI | FUNC3(dst_ar) | FUNC6(dst_ar) | FUNC2(uimm >> 32), dst_ar));

	imm &= (1l << shift) - 1;
	if (!(imm & ~0xffff)) {
		ins = (shift == 32) ? DSLL32 : DSLL;
		if (shift < 32)
			ins |= FUNC4(shift);
		FUNC1(FUNC7(compiler, ins | FUNC6(dst_ar) | FUNC0(dst_ar), dst_ar));
		return !(imm & 0xffff) ? SLJIT_SUCCESS : FUNC7(compiler, ORI | FUNC3(dst_ar) | FUNC6(dst_ar) | FUNC2(imm), dst_ar);
	}

	/* Double shifts needs to be performed. */
	uimm <<= 32;
	shift2 = shift - 16;

	while (!(uimm & 0xf000000000000000l)) {
		shift2 -= 4;
		uimm <<= 4;
	}

	if (!(uimm & 0xc000000000000000l)) {
		shift2 -= 2;
		uimm <<= 2;
	}

	if (!(uimm & 0x8000000000000000l)) {
		shift2--;
		uimm <<= 1;
	}

	FUNC5((uimm & 0x8000000000000000l) && (shift2 > 0) && (shift2 <= 16));

	FUNC1(FUNC7(compiler, DSLL | FUNC6(dst_ar) | FUNC0(dst_ar) | FUNC4(shift - shift2), dst_ar));
	FUNC1(FUNC7(compiler, ORI | FUNC3(dst_ar) | FUNC6(dst_ar) | FUNC2(uimm >> 48), dst_ar));
	FUNC1(FUNC7(compiler, DSLL | FUNC6(dst_ar) | FUNC0(dst_ar) | FUNC4(shift2), dst_ar));

	imm &= (1l << shift2) - 1;
	return !(imm & 0xffff) ? SLJIT_SUCCESS : FUNC7(compiler, ORI | FUNC3(dst_ar) | FUNC6(dst_ar) | FUNC2(imm), dst_ar);
}