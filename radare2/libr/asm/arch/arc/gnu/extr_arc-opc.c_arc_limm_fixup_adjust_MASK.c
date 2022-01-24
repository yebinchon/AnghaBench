#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int arc_insn ;

/* Variables and functions */
 int ARC_REG_LIMM ; 
 int ARC_REG_SHIMM ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

int
FUNC3 (arc_insn insn)
{
  int retval = 0;

  /* Check for st shimm,[limm].  */

  if ((insn & (FUNC2(-1) | FUNC1(-1) | FUNC0(-1))) ==
      (FUNC2(2) | FUNC1(ARC_REG_SHIMM) | FUNC0(ARC_REG_LIMM)))
    {
      retval = insn & 0x1ff;
      if (retval & 0x100) { /* Sign extend 9 bit offset.  */
	      retval |= ~0x1ff;
      }
    }
  return -retval; /* Negate offset for return.  */
}