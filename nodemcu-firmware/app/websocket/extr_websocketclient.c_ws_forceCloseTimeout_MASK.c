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
struct TYPE_2__ {int connectionState; int /*<<< orphan*/  conn; scalar_t__ isSecure; } ;
typedef  TYPE_1__ ws_info ;
struct espconn {scalar_t__ reverse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *arg) {
  FUNC0("ws_forceCloseTimeout\n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  if (ws->connectionState == 0 || ws->connectionState == 4) {
    return;
  }

  if (ws->isSecure)
    FUNC2(ws->conn);
  else
    FUNC1(ws->conn);
}