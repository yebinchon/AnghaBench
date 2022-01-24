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
struct TYPE_3__ {int wcnt; int /*<<< orphan*/ ** words; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_bool ;
typedef  int /*<<< orphan*/  dbgcmd_state ;

/* Variables and functions */
 int /*<<< orphan*/  DBGST_PROMPT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

dbgcmd_state
FUNC3(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_bool is_valid;
  int i;

  switch (mrdb->wcnt) {
  case 0:
  case 1:
    is_valid = FUNC2();
    break;
  case 2:
    is_valid = FUNC1(mrdb->words[1], NULL);
    break;
  case 3:
    is_valid = FUNC1(mrdb->words[1], mrdb->words[2]);
    break;
  default:
    is_valid = FALSE;
    break;
  }

  if (!is_valid) {
    FUNC0("Invalid command \"");
    for (i = 1; i < mrdb->wcnt; i++) {
      FUNC0("%s%s", i == 1 ? "" : " ", mrdb->words[i]);
    }
    FUNC0("\". Try \"help\".\n");
  }

  return DBGST_PROMPT;
}