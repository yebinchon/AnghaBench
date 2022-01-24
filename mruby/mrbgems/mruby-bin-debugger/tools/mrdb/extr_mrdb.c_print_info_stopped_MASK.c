#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* dbg; } ;
typedef  TYPE_2__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_7__ {int bm; } ;

/* Variables and functions */
#define  BRK_BREAK 130 
#define  BRK_NEXT 129 
#define  BRK_STEP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(mrb_state *mrb, mrdb_state *mrdb)
{
  switch(mrdb->dbg->bm) {
    case BRK_BREAK:
      FUNC0(mrb, mrdb);
      FUNC1(mrb, mrdb);
      break;
    case BRK_STEP:
    case BRK_NEXT:
      FUNC2(mrb, mrdb);
      FUNC1(mrb, mrdb);
      break;
    default:
      break;
  }
}