#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* operands; } ;
typedef  TYPE_3__ aarch64_inst ;
struct TYPE_11__ {int value; } ;
struct TYPE_8__ {scalar_t__ regno; } ;
struct TYPE_9__ {int /*<<< orphan*/  type; TYPE_4__* cond; TYPE_1__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_OPND_NIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int) ; 
 TYPE_4__* FUNC1 (TYPE_4__*) ; 

__attribute__((used)) static int
FUNC2 (aarch64_inst *inst)
{
  if (inst->operands[1].reg.regno == inst->operands[2].reg.regno
      && (inst->operands[3].cond->value & 0xe) != 0xe)
    {
      FUNC0 (inst, 2, 3);
      inst->operands[2].cond = FUNC1 (inst->operands[3].cond);
      inst->operands[3].type = AARCH64_OPND_NIL;
      return 1;
    }
  return 0;
}