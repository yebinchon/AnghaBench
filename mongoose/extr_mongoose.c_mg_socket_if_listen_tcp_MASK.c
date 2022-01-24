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
typedef  union socket_address {int dummy; } socket_address ;
struct mg_connection {int dummy; } ;
typedef  scalar_t__ sock_t ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (union socket_address*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,scalar_t__) ; 

int FUNC3(struct mg_connection *nc,
                            union socket_address *sa) {
  int proto = 0;
  sock_t sock = FUNC1(sa, SOCK_STREAM, proto);
  if (sock == INVALID_SOCKET) {
    return (FUNC0() ? FUNC0() : 1);
  }
  FUNC2(nc, sock);
  return 0;
}