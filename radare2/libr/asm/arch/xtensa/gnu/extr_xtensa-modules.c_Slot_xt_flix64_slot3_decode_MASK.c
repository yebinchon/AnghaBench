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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/  const) ; 
 int FUNC24 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC25 (const xtensa_insnbuf insn)
{
  switch (FUNC24 (insn))
    {
    case 1:
	    if (FUNC1 (insn) == 0) {
		    return 516; /* bbci.w18 */
	    }
	    break;
    case 2:
	    if (FUNC1 (insn) == 0) {
		    return 517; /* bbsi.w18 */
	    }
	    break;
    case 3:
	    if (FUNC19 (insn) == 0) {
		    return 526; /* ball.w18 */
	    }
	    break;
    case 4:
	    if (FUNC17 (insn) == 0) {
		    return 524; /* bany.w18 */
	    }
	    break;
    case 5:
	    if (FUNC21 (insn) == 0) {
		    return 528; /* bbc.w18 */
	    }
	    break;
    case 6:
	    if (FUNC22 (insn) == 0) {
		    return 529; /* bbs.w18 */
	    }
	    break;
    case 7:
	    if (FUNC11 (insn) == 0) {
		    return 518; /* beq.w18 */
	    }
	    break;
    case 8:
	    if (FUNC5 (insn) == 0) {
		    return 510; /* beqi.w18 */
	    }
	    break;
    case 9:
	    if (FUNC13 (insn) == 0) {
		    return 520; /* bge.w18 */
	    }
	    break;
    case 10:
	    if (FUNC7 (insn) == 0) {
		    return 512; /* bgei.w18 */
	    }
	    break;
    case 11:
	    if (FUNC15 (insn) == 0) {
		    return 522; /* bgeu.w18 */
	    }
	    break;
    case 12:
	    if (FUNC9 (insn) == 0) {
		    return 514; /* bgeui.w18 */
	    }
	    break;
    case 13:
	    if (FUNC14 (insn) == 0) {
		    return 521; /* blt.w18 */
	    }
	    break;
    case 14:
	    if (FUNC8 (insn) == 0) {
		    return 513; /* blti.w18 */
	    }
	    break;
    case 15:
	    if (FUNC16 (insn) == 0) {
		    return 523; /* bltu.w18 */
	    }
	    break;
    case 16:
	    if (FUNC10 (insn) == 0) {
		    return 515; /* bltui.w18 */
	    }
	    break;
    case 17:
	    if (FUNC20 (insn) == 0) {
		    return 527; /* bnall.w18 */
	    }
	    break;
    case 18:
	    if (FUNC12 (insn) == 0) {
		    return 519; /* bne.w18 */
	    }
	    break;
    case 19:
	    if (FUNC6 (insn) == 0) {
		    return 511; /* bnei.w18 */
	    }
	    break;
    case 20:
	    if (FUNC18 (insn) == 0) {
		    return 525; /* bnone.w18 */
	    }
	    break;
    case 21:
	    if (FUNC0 (insn) == 0) {
		    return 506; /* beqz.w18 */
	    }
	    break;
    case 22:
	    if (FUNC3 (insn) == 0) {
		    return 508; /* bgez.w18 */
	    }
	    break;
    case 23:
	    if (FUNC4 (insn) == 0) {
		    return 509; /* bltz.w18 */
	    }
	    break;
    case 24:
	    if (FUNC2 (insn) == 0) {
		    return 507; /* bnez.w18 */
	    }
	    break;
    case 25:
	    if (FUNC23 (insn) == 0) {
		    return 97; /* nop */
	    }
	    break;
    }
  return 0;
}