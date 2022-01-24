#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* operands; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_2__ aarch64_inst ;
struct TYPE_4__ {int /*<<< orphan*/  qualifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_OPND_QLF_NIL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void
FUNC2 (aarch64_inst *inst, int idx)
{
  FUNC1 (idx >=0 && idx < FUNC0 (inst->opcode));
  inst->operands[idx].qualifier = AARCH64_OPND_QLF_NIL;
}