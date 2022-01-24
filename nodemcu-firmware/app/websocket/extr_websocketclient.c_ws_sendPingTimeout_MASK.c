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
struct TYPE_2__ {scalar_t__ unhealthyPoints; int knownFailureCode; scalar_t__ isSecure; } ;
typedef  TYPE_1__ ws_info ;
struct espconn {scalar_t__ reverse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  WS_OPCODE_PING ; 
 scalar_t__ WS_UNHEALTHY_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC3 (struct espconn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *arg) {
  FUNC0("ws_sendPingTimeout \n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  if (ws->unhealthyPoints == WS_UNHEALTHY_THRESHOLD) {
    // several pings were sent but no pongs nor messages
    ws->knownFailureCode = -19;

    if (ws->isSecure)
      FUNC2(conn);
    else
      FUNC1(conn);
    return;
  }

  FUNC3(conn, WS_OPCODE_PING, NULL, 0);
  ws->unhealthyPoints += 1;
}