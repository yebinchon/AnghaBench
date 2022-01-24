#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_boolean ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct TYPE_11__ {TYPE_2__ imm; } ;
typedef  TYPE_3__ aarch64_opnd_info ;
typedef  int /*<<< orphan*/  aarch64_operand_error ;
typedef  int /*<<< orphan*/  aarch64_operand ;
struct TYPE_12__ {TYPE_1__* operands; } ;
typedef  TYPE_4__ aarch64_inst ;
typedef  int /*<<< orphan*/  aarch64_insn ;
struct TYPE_9__ {int /*<<< orphan*/  qualifier; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,TYPE_3__*,int /*<<< orphan*/  const,TYPE_4__ const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

bfd_boolean
FUNC3 (const aarch64_operand *self,
			  aarch64_opnd_info *info, const aarch64_insn code,
			  const aarch64_inst *inst,
			  aarch64_operand_error *errors)
{
  int esize = FUNC1 (inst->operands[0].qualifier);
  return (FUNC0 (self, info, code, inst, errors)
	  && FUNC2 (info->imm.value, esize));
}