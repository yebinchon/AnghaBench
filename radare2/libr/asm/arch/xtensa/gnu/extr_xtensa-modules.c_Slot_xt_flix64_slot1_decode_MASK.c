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
typedef  int /*<<< orphan*/  xtensa_insnbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int FUNC5 (int /*<<< orphan*/  const) ; 
 int FUNC6 (int /*<<< orphan*/  const) ; 
 int FUNC7 (int /*<<< orphan*/  const) ; 
 int FUNC8 (int /*<<< orphan*/  const) ; 
 int FUNC9 (int /*<<< orphan*/  const) ; 
 int FUNC10 (int /*<<< orphan*/  const) ; 
 int FUNC11 (int /*<<< orphan*/  const) ; 
 int FUNC12 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/  const) ; 
 int FUNC21 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC22 (const xtensa_insnbuf insn)
{
	if (FUNC1 (insn) == 0 &&
		FUNC21 (insn) == 1) {
		return 78; /* extui */
	}
	switch (FUNC2 (insn)) {
	case 0:
		if (FUNC21 (insn) == 2) {
			return 90; /* movi */
		}
		break;
	case 2:
		if (FUNC21 (insn) == 1) {
			return 39; /* addi */
		}
		break;
	case 3:
		if (FUNC21 (insn) == 1) {
			return 40; /* addmi */
		}
		if (FUNC21 (insn) == 2 &&
			FUNC0 (insn) == 0) {
			return 51; /* xor */
		}
		break;
    }
  switch (FUNC3 (insn))
    {
    case 8:
	    if (FUNC21 (insn) == 2) {
		    return 111; /* slli */
	    }
	    break;
    case 16:
	    if (FUNC21 (insn) == 2) {
		    return 112; /* srai */
	    }
	    break;
    case 19:
	    if (FUNC21 (insn) == 2 &&
		    FUNC17 (insn) == 0) {
		    return 107; /* sll */
	    }
	    break;
    }
  switch (FUNC4 (insn))
    {
    case 18:
	    if (FUNC21 (insn) == 2) {
		    return 41; /* add */
	    }
	    break;
    case 19:
	    if (FUNC21 (insn) == 2) {
		    return 45; /* addx8 */
	    }
	    break;
    case 20:
	    if (FUNC21 (insn) == 2) {
		    return 43; /* addx2 */
	    }
	    break;
    case 21:
	    if (FUNC21 (insn) == 2) {
		    return 49; /* and */
	    }
	    break;
    case 22:
	    if (FUNC21 (insn) == 2) {
		    return 91; /* moveqz */
	    }
	    break;
    case 23:
	    if (FUNC21 (insn) == 2) {
		    return 94; /* movgez */
	    }
	    break;
    case 24:
	    if (FUNC21 (insn) == 2) {
		    return 44; /* addx4 */
	    }
	    break;
    case 25:
	    if (FUNC21 (insn) == 2) {
		    return 93; /* movltz */
	    }
	    break;
    case 26:
	    if (FUNC21 (insn) == 2) {
		    return 92; /* movnez */
	    }
	    break;
    case 27:
	    if (FUNC21 (insn) == 2) {
		    return 296; /* mul16u */
	    }
	    break;
    case 28:
	    if (FUNC21 (insn) == 2) {
		    return 297; /* mul16s */
	    }
	    break;
    case 29:
	    if (FUNC21 (insn) == 2) {
		    return 461; /* mull */
	    }
	    break;
    case 30:
	    if (FUNC21 (insn) == 2) {
		    return 50; /* or */
	    }
	    break;
    case 31:
	    if (FUNC21 (insn) == 2) {
		    return 450; /* sext */
	    }
	    break;
    case 34:
	    if (FUNC21 (insn) == 2) {
		    return 108; /* src */
	    }
	    break;
    case 36:
	    if (FUNC21 (insn) == 2) {
		    return 113; /* srli */
	    }
	    break;
    }
    if (FUNC5 (insn) == 280 &&
	    FUNC21 (insn) == 2 &&
	    FUNC13 (insn) == 0) {
	    return 32; /* mov.n */
    }
    if (FUNC6 (insn) == 281 &&
	    FUNC21 (insn) == 2 &&
	    FUNC14 (insn) == 0) {
	    return 81; /* jx */
    }
    if (FUNC7 (insn) == 141 &&
	    FUNC21 (insn) == 2 &&
	    FUNC19 (insn) == 0) {
	    return 103; /* ssl */
    }
    if (FUNC8 (insn) == 71 &&
	    FUNC21 (insn) == 2 &&
	    FUNC16 (insn) == 0) {
	    return 97; /* nop */
    }
    if (FUNC9 (insn) == 148 &&
	    FUNC21 (insn) == 2 &&
	    FUNC15 (insn) == 0) {
	    return 95; /* neg */
    }
    if (FUNC10 (insn) == 149 &&
	    FUNC21 (insn) == 2 &&
	    FUNC15 (insn) == 0) {
	    return 110; /* sra */
    }
    if (FUNC11 (insn) == 75 &&
	    FUNC21 (insn) == 2 &&
	    FUNC18 (insn) == 0) {
	    return 109; /* srl */
    }
    if (FUNC12 (insn) == 5 &&
	    FUNC21 (insn) == 2 &&
	    FUNC20 (insn) == 0) {
	    return 42; /* sub */
    }
    if (FUNC21 (insn) == 3) {
	    return 80; /* j */
    }
    return 0;
}