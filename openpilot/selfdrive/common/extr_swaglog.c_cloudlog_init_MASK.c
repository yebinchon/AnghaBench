#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int inited; int /*<<< orphan*/  ctx_j; void* print_level; int /*<<< orphan*/  sock; int /*<<< orphan*/  zctx; } ;

/* Variables and functions */
 void* CLOUDLOG_DEBUG ; 
 void* CLOUDLOG_INFO ; 
 void* CLOUDLOG_WARNING ; 
 char* COMMA_VERSION ; 
 int /*<<< orphan*/  ZMQ_PUSH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ s ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9() {
  if (s.inited) return;
  s.ctx_j = FUNC4();
  s.zctx = FUNC7();
  s.sock = FUNC8(s.zctx, ZMQ_PUSH);
  FUNC6(s.sock, "ipc:///tmp/logmessage");

  s.print_level = CLOUDLOG_WARNING;
  const char* print_level = FUNC1("LOGPRINT");
  if (print_level) {
    if (FUNC5(print_level, "debug") == 0) {
      s.print_level = CLOUDLOG_DEBUG;
    } else if (FUNC5(print_level, "info") == 0) {
      s.print_level = CLOUDLOG_INFO;
    } else if (FUNC5(print_level, "warning") == 0) {
      s.print_level = CLOUDLOG_WARNING;
    }
  }

  // openpilot bindings
  char* dongle_id = FUNC1("DONGLE_ID");
  if (dongle_id) {
    FUNC0("dongle_id", dongle_id);
  }
  FUNC0("version", COMMA_VERSION);
  bool dirty = !FUNC1("CLEAN");
  FUNC2(s.ctx_j, "dirty", FUNC3(dirty));

  s.inited = true;
}