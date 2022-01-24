#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int connectionState; int knownFailureCode; int /*<<< orphan*/  (* onFailure ) (TYPE_2__*,int) ;int /*<<< orphan*/ * conn; struct espconn* payloadBuffer; struct espconn* frameBuffer; struct espconn* expectedSecKey; struct espconn* path; struct espconn* hostname; int /*<<< orphan*/  timeoutTimer; } ;
typedef  TYPE_2__ ws_info ;
struct TYPE_5__ {struct espconn* tcp; } ;
struct espconn {TYPE_1__ proto; scalar_t__ reverse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC6(void *arg) {
  FUNC0("disconnect_callback\n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  ws->connectionState = 4;

  FUNC3(&ws->timeoutTimer);

  FUNC0("ws->hostname %d\n", ws->hostname);
  FUNC2(ws->hostname);
  FUNC0("ws->path %d\n ", ws->path);
  FUNC2(ws->path);

  if (ws->expectedSecKey != NULL) {
    FUNC2(ws->expectedSecKey);
  }

  if (ws->frameBuffer != NULL) {
    FUNC2(ws->frameBuffer);
  }

  if (ws->payloadBuffer != NULL) {
    FUNC2(ws->payloadBuffer);
  }

  if (conn->proto.tcp != NULL) {
    FUNC2(conn->proto.tcp);
  }

  FUNC0("conn %d\n", conn);
  FUNC1(conn);

  FUNC0("freeing conn1 \n");

  FUNC2(conn);
  ws->conn = NULL;

  if (ws->onFailure) {
    if (ws->knownFailureCode) ws->onFailure(ws, ws->knownFailureCode);
    else ws->onFailure(ws, -99);
  }
}