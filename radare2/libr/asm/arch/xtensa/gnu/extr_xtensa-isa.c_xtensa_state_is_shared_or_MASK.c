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
typedef  size_t xtensa_state ;
struct TYPE_5__ {TYPE_1__* states; } ;
typedef  TYPE_2__ xtensa_isa_internal ;
typedef  scalar_t__ xtensa_isa ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int XTENSA_STATE_IS_SHARED_OR ; 
 int /*<<< orphan*/  XTENSA_UNDEFINED ; 

int
FUNC1 (xtensa_isa isa, xtensa_state st)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  FUNC0 (intisa, st, XTENSA_UNDEFINED);
  if ((intisa->states[st].flags & XTENSA_STATE_IS_SHARED_OR) != 0) {
	  return 1;
  }
  return 0;
}