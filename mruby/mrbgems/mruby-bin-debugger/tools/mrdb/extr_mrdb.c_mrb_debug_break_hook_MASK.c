#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrdb_state ;
typedef  int /*<<< orphan*/  mrdb_exemode ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_6__ {int /*<<< orphan*/  xm; } ;
typedef  TYPE_1__ mrb_debug_context ;
struct TYPE_7__ {scalar_t__ (* func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ debug_command ;
typedef  scalar_t__ dbgcmd_state ;

/* Variables and functions */
 scalar_t__ DBGST_CONTINUE ; 
 scalar_t__ DBGST_RESTART ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static mrdb_exemode
FUNC5(mrb_state *mrb, mrb_debug_context *dbg)
{
  debug_command *cmd;
  dbgcmd_state st = DBGST_CONTINUE;
  mrdb_state *mrdb = FUNC2(mrb);

  FUNC3(mrb, mrdb);

  while (1) {
    cmd = FUNC0(mrb, mrdb);
    FUNC1(cmd);

    st = cmd->func(mrb, mrdb);

    if ((st == DBGST_CONTINUE) || (st == DBGST_RESTART)) break;
  }
  return dbg->xm;
}