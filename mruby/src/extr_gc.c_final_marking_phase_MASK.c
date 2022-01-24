#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct RBasic {int dummy; } ;
struct TYPE_10__ {scalar_t__ exc; int /*<<< orphan*/  root_c; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ mrb_state ;
struct TYPE_11__ {int arena_idx; int /*<<< orphan*/ * gray_list; int /*<<< orphan*/ * atomic_gray_list; struct RBasic** arena; } ;
typedef  TYPE_2__ mrb_gc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RBasic*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(mrb_state *mrb, mrb_gc *gc)
{
  int i, e;

  /* mark arena */
  for (i=0,e=gc->arena_idx; i<e; i++) {
    FUNC3(mrb, gc->arena[i]);
  }
  FUNC4(mrb);
  FUNC1(mrb, mrb->c);
  FUNC1(mrb, mrb->root_c);
  FUNC3(mrb, (struct RBasic*)mrb->exc);
  FUNC0(mrb, gc);
  FUNC2(gc->gray_list == NULL);
  gc->gray_list = gc->atomic_gray_list;
  gc->atomic_gray_list = NULL;
  FUNC0(mrb, gc);
  FUNC2(gc->gray_list == NULL);
}