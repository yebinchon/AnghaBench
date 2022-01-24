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
typedef  int /*<<< orphan*/  xtensa_opcode ;
struct TYPE_8__ {TYPE_2__* slots; TYPE_1__* formats; } ;
typedef  TYPE_3__ xtensa_isa_internal ;
typedef  scalar_t__ xtensa_isa ;
typedef  size_t xtensa_format ;
struct TYPE_7__ {int /*<<< orphan*/  nop_name; } ;
struct TYPE_6__ {int* slot_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XTENSA_UNDEFINED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

xtensa_opcode
FUNC3 (xtensa_isa isa, xtensa_format fmt, int slot)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  int slot_id;

  FUNC0 (intisa, fmt, XTENSA_UNDEFINED);
  FUNC1 (intisa, fmt, slot, XTENSA_UNDEFINED);

  slot_id = intisa->formats[fmt].slot_id[slot];
  return FUNC2 (isa, intisa->slots[slot_id].nop_name);
}