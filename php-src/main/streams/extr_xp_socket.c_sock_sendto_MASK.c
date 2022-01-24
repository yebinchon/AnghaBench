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
struct sockaddr {int dummy; } ;
typedef  size_t socklen_t ;
struct TYPE_3__ {int /*<<< orphan*/  socket; } ;
typedef  TYPE_1__ php_netstream_data_t ;

/* Variables and functions */
 size_t INT_MAX ; 
 int SOCK_CONN_ERR ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,size_t,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,struct sockaddr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(php_netstream_data_t *sock, const char *buf, size_t buflen, int flags,
		struct sockaddr *addr, socklen_t addrlen
		)
{
	int ret;
	if (addr) {
		ret = FUNC2(sock->socket, buf, FUNC0(buflen), flags, addr, FUNC0(addrlen));

		return (ret == SOCK_CONN_ERR) ? -1 : ret;
	}
#ifdef PHP_WIN32
	return ((ret = send(sock->socket, buf, buflen > INT_MAX ? INT_MAX : (int)buflen, flags)) == SOCK_CONN_ERR) ? -1 : ret;
#else
	return ((ret = FUNC1(sock->socket, buf, buflen, flags)) == SOCK_CONN_ERR) ? -1 : ret;
#endif
}