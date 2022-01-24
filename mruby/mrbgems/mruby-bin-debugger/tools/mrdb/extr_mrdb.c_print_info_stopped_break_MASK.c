#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_12__ {TYPE_7__* dbg; } ;
typedef  TYPE_4__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_10__ {char* method_name; char* class_name; } ;
struct TYPE_9__ {char* file; int lineno; } ;
struct TYPE_11__ {TYPE_2__ methodpoint; TYPE_1__ linepoint; } ;
struct TYPE_13__ {int type; int bpno; TYPE_3__ point; } ;
typedef  TYPE_5__ mrb_debug_breakpoint ;
typedef  scalar_t__ int32_t ;
struct TYPE_14__ {int /*<<< orphan*/  isCfunc; int /*<<< orphan*/  stopped_bpno; } ;

/* Variables and functions */
#define  MRB_DEBUG_BPTYPE_LINE 129 
#define  MRB_DEBUG_BPTYPE_METHOD 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(mrb_state *mrb, mrdb_state *mrdb)
{
  mrb_debug_breakpoint bp;
  int32_t ret;
  uint16_t lineno;
  const char *file;
  const char *method_name;
  const char *class_name;

  ret = FUNC0(mrb, mrdb->dbg, mrdb->dbg->stopped_bpno, &bp);
  if (ret == 0) {
    switch(bp.type) {
      case MRB_DEBUG_BPTYPE_LINE:
        file = bp.point.linepoint.file;
        lineno = bp.point.linepoint.lineno;
        FUNC1("Breakpoint %d, at %s:%d\n", bp.bpno, file, lineno);
        break;
      case MRB_DEBUG_BPTYPE_METHOD:
        method_name = bp.point.methodpoint.method_name;
        class_name = bp.point.methodpoint.class_name;
        if (class_name == NULL) {
          FUNC1("Breakpoint %d, %s\n", bp.bpno, method_name);
        }
        else {
          FUNC1("Breakpoint %d, %s:%s\n", bp.bpno, class_name, method_name);
        }
        if (mrdb->dbg->isCfunc) {
          FUNC1("Stopped before calling the C function.\n");
        }
        break;
      default:
        break;
    }
  }
}