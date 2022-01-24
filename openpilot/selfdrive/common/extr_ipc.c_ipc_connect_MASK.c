#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(const char* socket_path) {
  int err;

  int sock = FUNC4(AF_UNIX, SOCK_SEQPACKET, 0);
  FUNC0(sock >= 0);
  struct sockaddr_un addr = {
    .sun_family = AF_UNIX,
  };
  FUNC3(addr.sun_path, sizeof(addr.sun_path), "%s", socket_path);
  err = FUNC2(sock, (struct sockaddr*)&addr, sizeof(addr));
  if (err != 0) {
    FUNC1(sock);
    return -1;
  }

  return sock;
}