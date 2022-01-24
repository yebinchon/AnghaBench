#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_9__ {TYPE_1__* dbg; } ;
typedef  TYPE_2__ mrdb_state ;
struct TYPE_10__ {int /*<<< orphan*/  eException_class; } ;
typedef  TYPE_3__ mrb_state ;
typedef  int /*<<< orphan*/  dbgcmd_state ;
struct TYPE_8__ {int xm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBGST_PROMPT ; 
#define  DBG_NEXT 130 
 void* DBG_QUIT ; 
#define  DBG_RUN 129 
#define  DBG_STEP 128 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 struct RClass* FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct RClass*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 

dbgcmd_state
FUNC5(mrb_state *mrb, mrdb_state *mrdb)
{
  switch (mrdb->dbg->xm) {
  case DBG_RUN:
  case DBG_STEP:
  case DBG_NEXT:
    while (1) {
      char c;
      int buf;

      FUNC4("The program is running.  Exit anyway? (y or n) ");
      FUNC0(stdout);

      if ((buf = FUNC1()) == EOF) {
        mrdb->dbg->xm = DBG_QUIT;
        break;
      }
      c = buf;
      while (buf != '\n' && (buf = FUNC1()) != EOF) ;

      if (c == 'y' || c == 'Y') {
        mrdb->dbg->xm = DBG_QUIT;
        break;
      }
      else if (c == 'n' || c == 'N') {
        break;
      }
      else {
        FUNC4("Please answer y or n.\n");
      }
    }
    break;
  default:
    mrdb->dbg->xm = DBG_QUIT;
    break;
  }

  if (mrdb->dbg->xm == DBG_QUIT) {
    struct RClass *exc;
    exc = FUNC2(mrb, "DebuggerExit", mrb->eException_class);
    FUNC3(mrb, exc, "Exit mrdb.");
  }
  return DBGST_PROMPT;
}