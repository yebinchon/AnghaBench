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
 int FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int FUNC5 (int /*<<< orphan*/  const) ; 
 int FUNC6 (int /*<<< orphan*/  const) ; 
 int FUNC7 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const) ; 
 int FUNC13 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC14 (const xtensa_insnbuf insn)
{
  switch (FUNC0 (insn))
    {
    case 0:
	    if (FUNC13 (insn) == 1) {
		    return 41; /* add */
	    }
	    if (FUNC13 (insn) == 5) {
		    return 42; /* sub */
	    }
	    if (FUNC13 (insn) == 2) {
		    return 43; /* addx2 */
	    }
	    if (FUNC13 (insn) == 3) {
		    return 49; /* and */
	    }
	    if (FUNC13 (insn) == 4) {
		    return 450; /* sext */
	    }
	    break;
    case 1:
	    if (FUNC13 (insn) == 1) {
		    return 27; /* addi.n */
	    }
	    if (FUNC13 (insn) == 2) {
		    return 44; /* addx4 */
	    }
	    if (FUNC13 (insn) == 3) {
		    return 50; /* or */
	    }
	    if (FUNC13 (insn) == 5) {
		    return 51; /* xor */
	    }
	    if (FUNC13 (insn) == 4) {
		    return 113; /* srli */
	    }
	    break;
    }
    if (FUNC1 (insn) == 0 &&
	    FUNC13 (insn) == 6) {
	    return 33; /* movi.n */
    }
    if (FUNC2 (insn) == 2 &&
	    FUNC13 (insn) == 6 &&
	    FUNC8 (insn) == 0) {
	    return 32; /* mov.n */
    }
    if (FUNC3 (insn) == 3 &&
	    FUNC13 (insn) == 6 &&
	    FUNC10 (insn) == 0) {
	    return 97; /* nop */
    }
    if (FUNC4 (insn) == 8 &&
	    FUNC13 (insn) == 6 &&
	    FUNC9 (insn) == 0) {
	    return 96; /* abs */
    }
    if (FUNC5 (insn) == 9 &&
	    FUNC13 (insn) == 6 &&
	    FUNC9 (insn) == 0) {
	    return 95; /* neg */
    }
    if (FUNC6 (insn) == 5 &&
	    FUNC13 (insn) == 6 &&
	    FUNC11 (insn) == 0) {
	    return 110; /* sra */
    }
    if (FUNC7 (insn) == 3 &&
	    FUNC13 (insn) == 6 &&
	    FUNC12 (insn) == 0) {
	    return 109; /* srl */
    }
    if (FUNC13 (insn) == 7) {
	    return 112; /* srai */
    }
    return 0;
}