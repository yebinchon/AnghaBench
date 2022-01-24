#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
union socket_address {int /*<<< orphan*/  sa; TYPE_2__ sin; } ;
typedef  int socklen_t ;
typedef  scalar_t__ sock_t ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INVALID_SOCKET ; 
 int SOCK_DGRAM ; 
 int SOCK_STREAM ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (union socket_address*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,union socket_address*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC10(sock_t sp[2], int sock_type) {
  union socket_address sa, sa2;
  sock_t sock;
  socklen_t len = sizeof(sa.sin);
  int ret = 0;

  sock = sp[0] = sp[1] = INVALID_SOCKET;

  (void) FUNC5(&sa, 0, sizeof(sa));
  sa.sin.sin_family = AF_INET;
  sa.sin.sin_addr.s_addr = FUNC3(0x7f000001); /* 127.0.0.1 */
  sa2 = sa;

  if ((sock = FUNC9(AF_INET, sock_type, 0)) == INVALID_SOCKET) {
  } else if (FUNC0(sock, &sa.sa, len) != 0) {
  } else if (sock_type == SOCK_STREAM && FUNC4(sock, 1) != 0) {
  } else if (FUNC2(sock, &sa.sa, &len) != 0) {
  } else if ((sp[0] = FUNC9(AF_INET, sock_type, 0)) == INVALID_SOCKET) {
  } else if (sock_type == SOCK_STREAM && FUNC1(sp[0], &sa.sa, len) != 0) {
  } else if (sock_type == SOCK_DGRAM &&
             (FUNC0(sp[0], &sa2.sa, len) != 0 ||
              FUNC2(sp[0], &sa2.sa, &len) != 0 ||
              FUNC1(sp[0], &sa.sa, len) != 0 ||
              FUNC1(sock, &sa2.sa, len) != 0)) {
  } else if ((sp[1] = (sock_type == SOCK_DGRAM ? sock : FUNC7(
                                                            sock, &sa, len))) ==
             INVALID_SOCKET) {
  } else {
    FUNC6(sp[0]);
    FUNC6(sp[1]);
    if (sock_type == SOCK_STREAM) FUNC8(&sock);
    ret = 1;
  }

  if (!ret) {
    if (sp[0] != INVALID_SOCKET) FUNC8(&sp[0]);
    if (sp[1] != INVALID_SOCKET) FUNC8(&sp[1]);
    if (sock != INVALID_SOCKET) FUNC8(&sock);
  }

  return ret;
}