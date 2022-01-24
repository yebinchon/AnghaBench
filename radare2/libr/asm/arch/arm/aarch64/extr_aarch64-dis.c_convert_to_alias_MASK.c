#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int op; } ;
typedef  TYPE_1__ aarch64_opcode ;
typedef  int /*<<< orphan*/  aarch64_inst ;

/* Variables and functions */
#define  OP_ASR_IMM 151 
#define  OP_BFC 150 
#define  OP_BFI 149 
#define  OP_BFXIL 148 
#define  OP_CINC 147 
#define  OP_CINV 146 
#define  OP_CNEG 145 
#define  OP_CSET 144 
#define  OP_CSETM 143 
#define  OP_LSL_IMM 142 
#define  OP_LSR_IMM 141 
#define  OP_MOV_IMM_LOG 140 
#define  OP_MOV_IMM_WIDE 139 
#define  OP_MOV_IMM_WIDEN 138 
#define  OP_MOV_V 137 
#define  OP_ROR_IMM 136 
#define  OP_SBFIZ 135 
#define  OP_SBFX 134 
#define  OP_SXTL 133 
#define  OP_SXTL2 132 
#define  OP_UBFIZ 131 
#define  OP_UBFX 130 
#define  OP_UXTL 129 
#define  OP_UXTL2 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12 (aarch64_inst *inst, const aarch64_opcode *alias)
{
  switch (alias->op)
    {
    case OP_ASR_IMM:
    case OP_LSR_IMM:
      return FUNC3 (inst);
    case OP_LSL_IMM:
      return FUNC11 (inst);
    case OP_CINC:
    case OP_CINV:
    case OP_CNEG:
      return FUNC6 (inst);
    case OP_CSET:
    case OP_CSETM:
      return FUNC4 (inst);
    case OP_UBFX:
    case OP_BFXIL:
    case OP_SBFX:
      return FUNC2 (inst);
    case OP_SBFIZ:
    case OP_BFI:
    case OP_UBFIZ:
      return FUNC1 (inst);
    case OP_BFC:
      return FUNC0 (inst);
    case OP_MOV_V:
      return FUNC9 (inst);
    case OP_MOV_IMM_WIDE:
    case OP_MOV_IMM_WIDEN:
      return FUNC8 (inst);
    case OP_MOV_IMM_LOG:
      return FUNC7 (inst);
    case OP_ROR_IMM:
      return FUNC5 (inst);
    case OP_SXTL:
    case OP_SXTL2:
    case OP_UXTL:
    case OP_UXTL2:
      return FUNC10 (inst);
    default:
      return 0;
    }
}