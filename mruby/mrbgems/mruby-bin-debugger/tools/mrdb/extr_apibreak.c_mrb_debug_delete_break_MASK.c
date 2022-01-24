#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_4__ {int bpnum; int /*<<< orphan*/ * bp; } ;
typedef  TYPE_1__ mrb_debug_context ;
typedef  int /*<<< orphan*/  mrb_debug_breakpoint ;
typedef  size_t int32_t ;

/* Variables and functions */
 size_t MRB_DEBUG_BREAK_INVALID_NO ; 
 size_t MRB_DEBUG_INVALID_ARGUMENT ; 
 size_t MRB_DEBUG_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int32_t
FUNC4(mrb_state *mrb, mrb_debug_context *dbg, uint32_t bpno)
{
  uint32_t i;
  int32_t index;

  if ((mrb == NULL) ||(dbg == NULL)) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  index = FUNC1(dbg, bpno);
  if (index == MRB_DEBUG_BREAK_INVALID_NO) {
    return MRB_DEBUG_BREAK_INVALID_NO;
  }

  FUNC0(mrb, &dbg->bp[index]);

  for(i = index ; i < dbg->bpnum; i++) {
    if ((i + 1) == dbg->bpnum) {
      FUNC3(&dbg->bp[i], 0, sizeof(mrb_debug_breakpoint));
    }
    else {
      FUNC2(&dbg->bp[i], &dbg->bp[i + 1], sizeof(mrb_debug_breakpoint));
    }
  }

  dbg->bpnum--;

  return MRB_DEBUG_OK;
}