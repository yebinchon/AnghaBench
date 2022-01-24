#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_5__ {int /*<<< orphan*/  syntax; } ;
typedef  TYPE_1__ tms320_dasm_t ;

/* Variables and functions */
 int /*<<< orphan*/  DD ; 
 int /*<<< orphan*/  DD2 ; 
 int /*<<< orphan*/  FDDD ; 
 int /*<<< orphan*/  FSSS ; 
 int /*<<< orphan*/  SS ; 
 int /*<<< orphan*/  SS2 ; 
 int /*<<< orphan*/  XACD ; 
 int /*<<< orphan*/  XACS ; 
 int /*<<< orphan*/  XDDD ; 
 int /*<<< orphan*/  XSSS ; 
 int /*<<< orphan*/  dd ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  r ; 
 int /*<<< orphan*/  ss ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  t ; 
 int /*<<< orphan*/  tt ; 
 int /*<<< orphan*/  vv ; 

void FUNC7(tms320_dasm_t * dasm)
{
	ut8 code = 0;

	// transition register

	if (FUNC0 (dasm, r)) {
		FUNC6 (dasm->syntax, "TRNx", "trn%d", FUNC1 (dasm, r));
	}

	// source and destination temporary registers

	if (FUNC0 (dasm, ss)) {
		FUNC6 (dasm->syntax, "Tx", "t%d", FUNC1 (dasm, ss));
	}

	if (FUNC0 (dasm, dd)) {
		FUNC6 (dasm->syntax, "Tx", "t%d", FUNC1 (dasm, dd));
	}

	// shifted in/out bit values

	if (FUNC0(dasm, vv)) {
		FUNC6(dasm->syntax, "BitIn", "%s", FUNC4(FUNC1(dasm, vv) >> 1, NULL));
		FUNC6(dasm->syntax, "BitOut", "%s", FUNC4(FUNC1(dasm, vv) >> 0, NULL));
	}

	// source and destination of CRC instruction

	if (FUNC0 (dasm, t)) {
		FUNC6 (dasm->syntax, "TCx", "%s", FUNC3 (FUNC1 (dasm, t), NULL));
	}

	if (FUNC0(dasm, tt)) {
		FUNC6(dasm->syntax, "TCx", "%s", FUNC3(FUNC1(dasm, tt) >> 0, NULL));
		FUNC6(dasm->syntax, "TCy", "%s", FUNC3(FUNC1(dasm, tt) >> 1, NULL));
	}

	// source or destination accumulator or extended register

	if (FUNC0(dasm, XSSS)) {
		FUNC6(dasm->syntax, "xsrc", "%s", FUNC5(FUNC1(dasm, XSSS), NULL));
		FUNC6(dasm->syntax, "XAsrc", "%s", FUNC5(FUNC1(dasm, XSSS), NULL));
	}

	if (FUNC0(dasm, XDDD)) {
		FUNC6(dasm->syntax, "xdst", "%s", FUNC5(FUNC1(dasm, XDDD), NULL));
		FUNC6(dasm->syntax, "XAdst", "%s", FUNC5(FUNC1(dasm, XDDD), NULL));
	}

	// source or destination accumulator, auxiliary or temporary register

	if (FUNC0(dasm, FSSS) && FUNC0(dasm, FDDD)) {
		if (FUNC1 (dasm, FSSS) == FUNC1 (dasm, FDDD)) {
			FUNC6 (dasm->syntax, "[src,] dst", "dst");
		} else {
			FUNC6 (dasm->syntax, "[src,] dst", "src, dst");
		}
	}

	if (FUNC0(dasm, FSSS) && FUNC0(dasm, FDDD)) {
		FUNC6(dasm->syntax, "src1", "%s", FUNC2(FUNC1(dasm, FSSS), NULL));
		FUNC6(dasm->syntax, "src2", "%s", FUNC2(FUNC1(dasm, FDDD), NULL));

		FUNC6(dasm->syntax, "dst1", "%s", FUNC2(FUNC1(dasm, FSSS), NULL));
		FUNC6(dasm->syntax, "dst2", "%s", FUNC2(FUNC1(dasm, FDDD), NULL));
	}


	code &= 0;
	code |= FUNC0(dasm, FSSS) ? 0x01 : 0x00;
	code |= FUNC0(dasm, FDDD) ? 0x02 : 0x00;

	switch (code) {
	case 0x01:	// FSSS
		FUNC6(dasm->syntax, "TAx", "%s", FUNC2(FUNC1(dasm, FSSS), NULL));
		break;
	case 0x02:	//      FDDD
		FUNC6(dasm->syntax, "TAx", "%s", FUNC2(FUNC1(dasm, FDDD), NULL));
		FUNC6(dasm->syntax, "TAy", "%s", FUNC2(FUNC1(dasm, FDDD), NULL));
		break;
	case 0x03:	// FSSS FDDD
		FUNC6(dasm->syntax, "TAx", "%s", FUNC2(FUNC1(dasm, FSSS), NULL));
		FUNC6(dasm->syntax, "TAy", "%s", FUNC2(FUNC1(dasm, FDDD), NULL));
		break;
	}

	if (FUNC0(dasm, FSSS)) {
		FUNC6(dasm->syntax, "src", "%s", FUNC2(FUNC1(dasm, FSSS), NULL));
	}

	if (FUNC0(dasm, FDDD)) {
		FUNC6(dasm->syntax, "dst", "%s", FUNC2(FUNC1(dasm, FDDD), NULL));
	}

	if (FUNC0 (dasm, XACS)) {
		FUNC6 (dasm->syntax, "XACsrc", "%s", FUNC5 (FUNC1 (dasm, XACS), NULL));
	}

	if (FUNC0 (dasm, XACD)) {
		FUNC6 (dasm->syntax, "XACdst", "%s", FUNC5 (FUNC1 (dasm, XACD), NULL));
	}

	// source and destination accumulator registers

	code &= 0;
	code |= FUNC0(dasm, SS) ? 0x01 : 0x00;
	code |= FUNC0(dasm, SS2) ? 0x02 : 0x00;
	code |= FUNC0(dasm, DD) ? 0x10 : 0x00;
	code |= FUNC0(dasm, DD2) ? 0x20 : 0x00;

	switch (code) {
	case 0x01:	// SS
		FUNC6(dasm->syntax, "ACx", "ac%d", FUNC1(dasm, SS));
		break;
	case 0x03:	// SSSS
		FUNC6(dasm->syntax, "ACx", "ac%d", FUNC1(dasm, SS));
		FUNC6(dasm->syntax, "ACy", "ac%d", FUNC1(dasm, SS2));
		break;
	case 0x11:	// SS   DD
		if (FUNC1(dasm, SS) == FUNC1(dasm, DD)) {
			FUNC6(dasm->syntax, "[, ACy]", "");
			FUNC6(dasm->syntax, "[ACx,] ACy", "ACy");
		} else {
			FUNC6(dasm->syntax, "[, ACy]", ", ACy");
			FUNC6(dasm->syntax, "[ACx,] ACy", "ACx, ACy");
		}
		FUNC6(dasm->syntax, "ACx", "ac%d", FUNC1(dasm, SS));
		FUNC6(dasm->syntax, "ACy", "ac%d", FUNC1(dasm, DD));
		break;
	case 0x33:	// SSSS DDDD
		FUNC6(dasm->syntax, "ACx", "ac%d", FUNC1(dasm, SS));
		FUNC6(dasm->syntax, "ACy", "ac%d", FUNC1(dasm, SS2));
		FUNC6(dasm->syntax, "ACz", "ac%d", FUNC1(dasm, DD));
		FUNC6(dasm->syntax, "ACw", "ac%d", FUNC1(dasm, DD2));
		break;
	case 0x10:	//      DD
		FUNC6(dasm->syntax, "ACx", "ac%d", FUNC1(dasm, DD));
		break;
	case 0x30:	//      DDDD
		FUNC6(dasm->syntax, "ACx", "ac%d", FUNC1(dasm, DD));
		FUNC6(dasm->syntax, "ACy", "ac%d", FUNC1(dasm, DD2));
		break;
	}
}