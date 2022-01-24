#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_7__ {int /*<<< orphan*/ * gray_list; int /*<<< orphan*/  atomic_gray_list; int /*<<< orphan*/  generational; } ;
typedef  TYPE_1__ mrb_gc ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MRB_GC_STATE_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(mrb_state *mrb, mrb_gc *gc)
{
  mrb_bool origin_mode = gc->generational;

  FUNC3(FUNC1(gc));
  if (FUNC2(gc)) {
    /* finish the half baked GC */
    FUNC0(mrb, gc, MRB_GC_STATE_ROOT);
  }

  /* Sweep the dead objects, then reset all the live objects
   * (including all the old objects, of course) to white. */
  gc->generational = FALSE;
  FUNC4(mrb, gc);
  FUNC0(mrb, gc, MRB_GC_STATE_ROOT);
  gc->generational = origin_mode;

  /* The gray objects have already been painted as white */
  gc->atomic_gray_list = *(gc->gray_list = NULL);
}