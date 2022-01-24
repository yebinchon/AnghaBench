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
struct TYPE_3__ {int connectionState; int /*<<< orphan*/  timeoutTimer; int /*<<< orphan*/  conn; scalar_t__ knownFailureCode; } ;
typedef  TYPE_1__ ws_info ;
typedef  int /*<<< orphan*/  os_timer_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWTIMER_RESUME ; 
 int /*<<< orphan*/  WS_FORCE_CLOSE_TIMEOUT_MS ; 
 int /*<<< orphan*/  WS_OPCODE_CLOSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ws_forceCloseTimeout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(ws_info *ws) {
  FUNC0("ws_close\n");

  if (ws->connectionState == 0 || ws->connectionState == 4) {
    return;
  }

  ws->knownFailureCode = 0; // no error as user requested to close
  if (ws->connectionState == 1) {
    FUNC2(ws->conn);
  } else {
    FUNC6(ws->conn, WS_OPCODE_CLOSE, NULL, 0);

    FUNC4(&ws->timeoutTimer);
    FUNC5(&ws->timeoutTimer, (os_timer_func_t *) ws_forceCloseTimeout, ws->conn);
    FUNC1(ws_forceCloseTimeout, SWTIMER_RESUME);
    FUNC3(&ws->timeoutTimer, WS_FORCE_CLOSE_TIMEOUT_MS, false);
  }
}