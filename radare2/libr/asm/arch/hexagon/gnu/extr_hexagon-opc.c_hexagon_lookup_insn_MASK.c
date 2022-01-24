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
struct TYPE_6__ {int /*<<< orphan*/  enc; scalar_t__ map; } ;
typedef  TYPE_1__ hexagon_opcode ;
typedef  int hexagon_insn ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 

const hexagon_opcode *
FUNC5
(hexagon_insn insn)
{
  const hexagon_opcode *opcode;
  hexagon_insn encode;
  hexagon_insn mask;

  /* Reset the packet bits. */
  insn = FUNC1 (insn);

  for (opcode = FUNC4 (insn);
       opcode;
       opcode = FUNC0 (opcode))
    {
      if (opcode->map)
        continue;

      encode = FUNC3 (opcode->enc);
      mask   = FUNC2   (opcode->enc);

      if ((insn & mask) == (encode & mask))
        return (opcode);
    }

  return NULL;
}