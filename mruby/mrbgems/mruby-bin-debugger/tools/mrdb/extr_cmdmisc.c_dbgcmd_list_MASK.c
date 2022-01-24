#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dbg; int /*<<< orphan*/  srcpath; } ;
typedef  TYPE_1__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_10__ {char* filename; int /*<<< orphan*/  line_max; int /*<<< orphan*/  line_min; } ;
typedef  TYPE_2__ listcmd_parser_state ;
typedef  int /*<<< orphan*/  dbgcmd_state ;

/* Variables and functions */
 int /*<<< orphan*/  DBGST_PROMPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 

dbgcmd_state
FUNC6(mrb_state *mrb, mrdb_state *mrdb)
{
  char *filename;
  listcmd_parser_state *st = FUNC1(mrb);

  if (FUNC5(mrb, mrdb, st)) {
    if ((filename = FUNC2(mrb, mrdb, mrdb->srcpath, st->filename)) == NULL) {
      filename = st->filename;
    }
    FUNC3(mrb, mrdb->dbg, filename, st->line_min, st->line_max);

    if (filename != NULL && filename != st->filename) {
      FUNC4(mrb, filename);
    }
    FUNC0(mrb, st);
  }

  return DBGST_PROMPT;
}