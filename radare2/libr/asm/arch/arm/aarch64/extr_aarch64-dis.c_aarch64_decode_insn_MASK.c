#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  aarch64_operand_error ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ aarch64_opcode ;
typedef  int /*<<< orphan*/  aarch64_inst ;
typedef  int /*<<< orphan*/  aarch64_insn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ERR_OK ; 
 int ERR_UND ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ debug_dump ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6 (aarch64_insn insn, aarch64_inst *inst,
		     bfd_boolean noaliases_p,
		     aarch64_operand_error *errors)
{
  const aarch64_opcode *opcode = FUNC3 (insn);

#ifdef DEBUG_AARCH64
  if (debug_dump)
    {
      const aarch64_opcode *tmp = opcode;
      printf ("\n");
      DEBUG_TRACE ("opcode lookup:");
      while (tmp != NULL)
	{
	  aarch64_verbose ("  %s", tmp->name);
	  tmp = aarch64_find_next_opcode (tmp);
	}
    }
#endif /* DEBUG_AARCH64 */

  /* A list of opcodes may have been found, as aarch64_opcode_lookup cannot
     distinguish some opcodes, e.g. SSHR and MOVI, which almost share the same
     opcode field and value, apart from the difference that one of them has an
     extra field as part of the opcode, but such a field is used for operand
     encoding in other opcode(s) ('immh' in the case of the example).  */
  while (opcode != NULL)
    {
      /* But only one opcode can be decoded successfully for, as the
	 decoding routine will check the constraint carefully.  */
      if (FUNC2 (opcode, insn, inst, noaliases_p, errors) == 1)
	return ERR_OK;
      opcode = FUNC1 (opcode);
    }

  return ERR_UND;
}