#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ ** qualifiers_list; int /*<<< orphan*/ * operands; } ;
typedef  TYPE_1__ aarch64_opcode ;

/* Variables and functions */
 scalar_t__ AARCH64_OPND_CLASS_SISD_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4 (const aarch64_opcode *opcode)
{
  int src_size = 0, dst_size = 0;
  if (FUNC0 (opcode->operands[0])
      == AARCH64_OPND_CLASS_SISD_REG)
    dst_size = FUNC1 (opcode->qualifiers_list[0][0]);
  if (FUNC0 (opcode->operands[1])
      == AARCH64_OPND_CLASS_SISD_REG)
    src_size = FUNC1 (opcode->qualifiers_list[0][1]);
  if (src_size == dst_size && src_size == 0)
    { FUNC3 (0); FUNC2 (); }
  /* When the result is not a sisd register or it is a long operantion.  */
  if (dst_size == 0 || dst_size == src_size << 1)
    return 1;
  else
    return 0;
}