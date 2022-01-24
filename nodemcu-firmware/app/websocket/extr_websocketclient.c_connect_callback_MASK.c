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
struct TYPE_9__ {int connectionState; scalar_t__ isSecure; int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; int /*<<< orphan*/  path; TYPE_2__ const* extraHeaders; int /*<<< orphan*/  expectedSecKey; } ;
typedef  TYPE_1__ ws_info ;
typedef  int /*<<< orphan*/  uint8_t ;
struct espconn {scalar_t__ reverse; } ;
struct TYPE_10__ {char* member_0; char* member_1; } ;
typedef  TYPE_2__ const header_t ;

/* Variables and functions */
 TYPE_2__ const* DEFAULT_HEADERS ; 
 TYPE_2__ const* EMPTY_HEADERS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  WS_INIT_REQUEST ; 
 scalar_t__ WS_INIT_REQUEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (struct espconn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct espconn*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ws_initReceiveCallback ; 

__attribute__((used)) static void FUNC10(void *arg) {
  FUNC0("Connected\n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;
  ws->connectionState = 3;

  FUNC1(conn, ws_initReceiveCallback);

  char *key;
  FUNC4(&key, &ws->expectedSecKey);

  header_t headers[] = {
	  {"Upgrade", "websocket"},
	  {"Connection", "Upgrade"},
	  {"Sec-WebSocket-Key", key},
	  {"Sec-WebSocket-Version", "13"},
	  {0}
  };

  const header_t *extraHeaders = ws->extraHeaders ? ws->extraHeaders : EMPTY_HEADERS;

  char buf[WS_INIT_REQUEST_LENGTH + FUNC9(ws->path) + FUNC9(ws->hostname) +
	  FUNC5(DEFAULT_HEADERS) + FUNC5(headers) + FUNC5(extraHeaders) + 2];

  int len = FUNC7(
                  buf,
                  WS_INIT_REQUEST,
                  ws->path,
                  ws->hostname,
                  ws->port
		  );

  len = FUNC8(buf + len, headers, extraHeaders, DEFAULT_HEADERS, 0) - buf;

  FUNC6(key);
  FUNC0("request: %s", buf);
  if (ws->isSecure)
    FUNC2(conn, (uint8_t *) buf, len);
  else
    FUNC3(conn, (uint8_t *) buf, len);
}