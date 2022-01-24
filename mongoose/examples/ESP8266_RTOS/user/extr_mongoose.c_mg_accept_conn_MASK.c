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
struct TYPE_2__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
union socket_address {TYPE_1__ sin; int /*<<< orphan*/  sa; } ;
struct mg_connection {int /*<<< orphan*/  sock; } ;
typedef  int socklen_t ;
typedef  scalar_t__ sock_t ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct mg_connection* FUNC5 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,union socket_address*,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mg_connection*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mg_connection *lc) {
  struct mg_connection *nc;
  union socket_address sa;
  socklen_t sa_len = sizeof(sa);
  /* NOTE(lsm): on Windows, sock is always > FD_SETSIZE */
  sock_t sock = FUNC1(lc->sock, &sa.sa, &sa_len);
  if (sock == INVALID_SOCKET) {
    if (FUNC7()) {
      FUNC0(("%p: failed to accept: %d", lc, FUNC4()));
    }
    return 0;
  }
  nc = FUNC5(lc);
  if (nc == NULL) {
    FUNC2(sock);
    return 0;
  }
  FUNC0(("%p conn from %s:%d", nc, FUNC3(sa.sin.sin_addr),
       FUNC9(sa.sin.sin_port)));
  FUNC8(nc, sock);
  FUNC6(nc, &sa, sa_len);
  return 1;
}