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
typedef  scalar_t__ aarch64_opnd_qualifier_t ;
typedef  scalar_t__* aarch64_opnd_qualifier_seq_t ;
struct TYPE_8__ {TYPE_2__* opcode; TYPE_1__* operands; } ;
typedef  TYPE_3__ aarch64_inst ;
struct TYPE_7__ {int /*<<< orphan*/  qualifiers_list; } ;
struct TYPE_6__ {scalar_t__ qualifier; } ;

/* Variables and functions */
 scalar_t__ AARCH64_OPND_QLF_NIL ; 
 scalar_t__ FUNC0 (TYPE_3__ const*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static aarch64_opnd_qualifier_t
FUNC2 (const aarch64_inst *inst, int i)
{
  aarch64_opnd_qualifier_seq_t qualifiers;
  /* Should not be called if the qualifier is known.  */
  FUNC1 (inst->operands[i].qualifier == AARCH64_OPND_QLF_NIL);
  if (FUNC0 (inst, inst->opcode->qualifiers_list,
			       i, qualifiers))
    return qualifiers[i];
  else
    return AARCH64_OPND_QLF_NIL;
}