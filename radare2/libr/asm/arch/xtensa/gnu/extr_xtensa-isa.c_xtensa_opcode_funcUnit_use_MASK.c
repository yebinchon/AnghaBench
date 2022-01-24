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
typedef  size_t xtensa_opcode ;
struct TYPE_5__ {TYPE_1__* opcodes; } ;
typedef  TYPE_2__ xtensa_isa_internal ;
typedef  scalar_t__ xtensa_isa ;
typedef  int /*<<< orphan*/  xtensa_funcUnit_use ;
struct TYPE_4__ {int num_funcUnit_uses; char* name; int /*<<< orphan*/ * funcUnit_uses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  xtensa_isa_bad_funcUnit ; 
 int /*<<< orphan*/  xtisa_errno ; 
 int /*<<< orphan*/  xtisa_error_msg ; 

xtensa_funcUnit_use *
FUNC2 (xtensa_isa isa, xtensa_opcode opc, int u)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  FUNC0 (intisa, opc, NULL);
  if (u < 0 || u >= intisa->opcodes[opc].num_funcUnit_uses)
    {
      xtisa_errno = xtensa_isa_bad_funcUnit;
      FUNC1 (xtisa_error_msg, "invalid functional unit use number (%d); "
	       "opcode \"%s\" has %d", u, intisa->opcodes[opc].name,
	       intisa->opcodes[opc].num_funcUnit_uses);
      return NULL;
    }
  return &intisa->opcodes[opc].funcUnit_uses[u];
}