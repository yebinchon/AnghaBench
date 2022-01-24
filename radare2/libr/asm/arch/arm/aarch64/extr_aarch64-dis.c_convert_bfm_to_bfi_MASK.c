#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_8__ {TYPE_2__* operands; } ;
typedef  TYPE_3__ aarch64_inst ;
struct TYPE_6__ {int value; } ;
struct TYPE_7__ {scalar_t__ qualifier; TYPE_1__ imm; } ;

/* Variables and functions */
 scalar_t__ AARCH64_OPND_QLF_imm_0_31 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 

__attribute__((used)) static int
FUNC1 (aarch64_inst *inst)
{
  int64_t immr, imms, val;

  immr = inst->operands[2].imm.value;
  imms = inst->operands[3].imm.value;
  val = inst->operands[2].qualifier == AARCH64_OPND_QLF_imm_0_31 ? 32 : 64;
  if (imms < immr)
    {
      inst->operands[2].imm.value = (val - immr) & (val - 1);
      inst->operands[3].imm.value = imms + 1;
      /* The two opcodes have different qualifiers for
	 the immediate operands; reset to help the checking.  */
      FUNC0 (inst, 2);
      FUNC0 (inst, 3);
      return 1;
    }

  return 0;
}