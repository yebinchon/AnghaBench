#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int connectionState; int isSecure; int port; struct espconn* conn; scalar_t__ unhealthyPoints; scalar_t__ payloadOriginalOpCode; scalar_t__ payloadBufferLen; int /*<<< orphan*/ * payloadBuffer; scalar_t__ frameBufferLen; int /*<<< orphan*/ * frameBuffer; scalar_t__ knownFailureCode; int /*<<< orphan*/ * expectedSecKey; void* path; void* hostname; int /*<<< orphan*/  (* onFailure ) (TYPE_2__*,int) ;} ;
typedef  TYPE_2__ ws_info ;
struct TYPE_9__ {TYPE_3__* tcp; } ;
struct espconn {TYPE_2__* reverse; TYPE_1__ proto; int /*<<< orphan*/  state; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  ip_addr_t ;
typedef  int /*<<< orphan*/  hostname ;
struct TYPE_11__ {int remote_port; int /*<<< orphan*/  local_port; } ;
typedef  TYPE_3__ esp_tcp ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ESPCONN_INPROGRESS ; 
 int /*<<< orphan*/  ESPCONN_NONE ; 
 int /*<<< orphan*/  ESPCONN_TCP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int PORT_INSECURE ; 
 int PORT_MAX_VALUE ; 
 int PORT_SECURE ; 
 char* PROTOCOL_INSECURE ; 
 char* PROTOCOL_SECURE ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,struct espconn*) ; 
 scalar_t__ FUNC4 (struct espconn*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char*,int /*<<< orphan*/ *,struct espconn*)) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,scalar_t__) ; 
 char* FUNC7 (char const*,char) ; 
 void* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 

void FUNC15(ws_info *ws, const char *url) {
  FUNC0("ws_connect called\n");

  if (ws == NULL) {
    FUNC0("ws_connect ws_info argument is null!");
    return;
  }

  if (url == NULL) {
    FUNC0("url is null!");
    return;
  }

  // Extract protocol - either ws or wss
  bool isSecure = FUNC10(url, PROTOCOL_SECURE, FUNC9(PROTOCOL_SECURE)) == 0;

  if (isSecure) {
    url += FUNC9(PROTOCOL_SECURE);
  } else {
    if (FUNC10(url, PROTOCOL_INSECURE, FUNC9(PROTOCOL_INSECURE)) != 0) {
      FUNC0("Failed to extract protocol from: %s\n", url);
      if (ws->onFailure) ws->onFailure(ws, -1);
      return;
    }
    url += FUNC9(PROTOCOL_INSECURE);
  }

  // Extract path - it should start with '/'
  char *path = FUNC7(url, '/');

  // Extract hostname, possibly including port
  char hostname[256];
  if (path) {
    if (path - url >= sizeof(hostname)) {
      FUNC0("Hostname too large");
      if (ws->onFailure) ws->onFailure(ws, -2);
      return;
    }
    FUNC6(hostname, url, path - url);
    hostname[path - url] = '\0';
  } else {
    // no path found, assuming the url only refers to the hostname and possibly the port
    FUNC6(hostname, url, FUNC9(url));
    hostname[FUNC9(url)] = '\0';
    path = "/";
  }

  // Extract port from hostname, if available
  char *portInHostname = FUNC7(hostname, ':');
  int port;
  if (portInHostname) {
    port = FUNC1(portInHostname + 1);
    if (port <= 0 || port > PORT_MAX_VALUE) {
      FUNC0("Invalid port number\n");
      if (ws->onFailure) ws->onFailure(ws, -3);
      return;
    }
    hostname[FUNC9(hostname) - FUNC9(portInHostname)] = '\0'; // remove port from hostname
  } else {
    port = isSecure ? PORT_SECURE : PORT_INSECURE;
  }

  if (FUNC9(hostname) == 0) {
    FUNC0("Failed to extract hostname\n");
    if (ws->onFailure) ws->onFailure(ws, -4);
    return;
  }

  FUNC0("secure protocol = %d\n", isSecure);
  FUNC0("hostname = %s\n", hostname);
  FUNC0("port = %d\n", port);
  FUNC0("path = %s\n", path);

  // Prepare internal ws_info
  ws->connectionState = 1;
  ws->isSecure = isSecure;
  ws->hostname = FUNC8(hostname);
  ws->port = port;
  ws->path = FUNC8(path);
  ws->expectedSecKey = NULL;
  ws->knownFailureCode = 0;
  ws->frameBuffer = NULL;
  ws->frameBufferLen = 0;
  ws->payloadBuffer = NULL;
  ws->payloadBufferLen = 0;
  ws->payloadOriginalOpCode = 0;
  ws->unhealthyPoints = 0;

  // Prepare espconn
  struct espconn *conn = (struct espconn *) FUNC2(1,sizeof(struct espconn));
  conn->type = ESPCONN_TCP;
  conn->state = ESPCONN_NONE;
  conn->proto.tcp = (esp_tcp *) FUNC2(1,sizeof(esp_tcp));
  conn->proto.tcp->local_port = FUNC5();
  conn->proto.tcp->remote_port = ws->port;

  conn->reverse = ws;
  ws->conn = conn;

  // Attempt to resolve hostname address
  ip_addr_t  addr;
  err_t result = FUNC4(conn, hostname, &addr, dns_callback);

  if (result == ESPCONN_INPROGRESS) {
    FUNC0("DNS pending\n");
  } else {
    FUNC3(hostname, &addr, conn);
  }

  return;
}