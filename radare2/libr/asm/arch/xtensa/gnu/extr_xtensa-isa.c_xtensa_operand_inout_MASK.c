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
typedef  size_t xtensa_opcode ;
struct TYPE_10__ {TYPE_4__* iclasses; TYPE_2__* opcodes; } ;
typedef  TYPE_3__ xtensa_isa_internal ;
typedef  scalar_t__ xtensa_isa ;
struct TYPE_11__ {TYPE_1__* operands; } ;
typedef  TYPE_4__ xtensa_iclass_internal ;
struct TYPE_9__ {int iclass_id; } ;
struct TYPE_8__ {char inout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t,TYPE_4__*,int,int /*<<< orphan*/ ) ; 

char
FUNC2 (xtensa_isa isa, xtensa_opcode opc, int opnd)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_iclass_internal *iclass;
  int iclass_id;
  char inout;

  FUNC0 (intisa, opc, 0);
  iclass_id = intisa->opcodes[opc].iclass_id;
  iclass = &intisa->iclasses[iclass_id];
  FUNC1 (intisa, opc, iclass, opnd, 0);
  inout = iclass->operands[opnd].inout;

  /* Special case for "sout" operands.  */
  if (inout == 's') {
	  return 'o';
  }

  return inout;
}