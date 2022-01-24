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
struct TYPE_3__ {int print_no; int /*<<< orphan*/  dbg; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  dbgcmd_state ;

/* Variables and functions */
 int /*<<< orphan*/  DBGST_PROMPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,int /*<<< orphan*/ ) ; 

dbgcmd_state
FUNC6(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_value result;
  mrb_value s;
  int ai;

  ai = FUNC3(mrb);

  result = FUNC1(mrb, mrdb->dbg, "local_variables", 0, NULL, 1);

  s = FUNC4(mrb, result, "\0");
  FUNC5("$%lu = %s\n", (unsigned long)mrdb->print_no++, FUNC0(s));

  if (mrdb->print_no == 0) {
    mrdb->print_no = 1;
  }

  FUNC2(mrb, ai);

  return DBGST_PROMPT;
}