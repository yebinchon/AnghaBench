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
struct disassemble_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
struct TYPE_5__ {int /*<<< orphan*/  operands; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_1__ aarch64_inst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,struct disassemble_info*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,struct disassemble_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct disassemble_info*) ; 

__attribute__((used)) static void
FUNC3 (bfd_vma pc, const aarch64_inst *inst,
		    struct disassemble_info *info)
{
  FUNC1 (inst, info);
  FUNC2 (pc, inst->opcode, inst->operands, info);
  FUNC0 (inst, info);
}