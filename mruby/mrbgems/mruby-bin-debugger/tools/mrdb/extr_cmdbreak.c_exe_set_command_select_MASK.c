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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t (* select_command_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_3__ {size_t wcnt; char** words; int /*<<< orphan*/  dbg; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t int32_t ;

/* Variables and functions */
 char* BREAK_ERR_MSG_INVALIDBPNO ; 
 char* BREAK_ERR_MSG_NOBPNO ; 
 size_t MRB_DEBUG_BREAK_INVALID_NO ; 
 size_t MRB_DEBUG_OK ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(mrb_state *mrb, mrdb_state *mrdb, select_command_func func)
{
  char* ps;
  int32_t ret = MRB_DEBUG_OK;
  int32_t bpno = 0;
  int32_t i;

  for(i=1; i<mrdb->wcnt; i++) {
    ps = mrdb->words[i];
    bpno = FUNC0(ps);
    if (bpno == 0) {
      FUNC2(BREAK_ERR_MSG_INVALIDBPNO, ps);
      break;
    }
    ret = func(mrb, mrdb->dbg, (uint32_t)bpno);
    if (ret == MRB_DEBUG_BREAK_INVALID_NO) {
      FUNC2(BREAK_ERR_MSG_NOBPNO, bpno);
    }
    else if (ret != MRB_DEBUG_OK) {
      FUNC1(ret);
    }
  }
}