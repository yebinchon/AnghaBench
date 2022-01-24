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
typedef  int /*<<< orphan*/  zend_string ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  php_sockaddr_storage ;
struct TYPE_3__ {int /*<<< orphan*/  socket; } ;
typedef  TYPE_1__ php_netstream_data_t ;

/* Variables and functions */
 int SOCK_CONN_ERR ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int,int /*<<< orphan*/ **,struct sockaddr**,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,struct sockaddr*,int*) ; 

__attribute__((used)) static inline int FUNC5(php_netstream_data_t *sock, char *buf, size_t buflen, int flags,
		zend_string **textaddr,
		struct sockaddr **addr, socklen_t *addrlen
		)
{
	int ret;
	int want_addr = textaddr || addr;

	if (want_addr) {
		php_sockaddr_storage sa;
		socklen_t sl = sizeof(sa);
		ret = FUNC4(sock->socket, buf, FUNC0(buflen), flags, (struct sockaddr*)&sa, &sl);
		ret = (ret == SOCK_CONN_ERR) ? -1 : ret;
		if (sl) {
			FUNC2((struct sockaddr*)&sa, sl,
					textaddr, addr, addrlen);
		} else {
			if (textaddr) {
				*textaddr = FUNC1();
			}
			if (addr) {
				*addr = NULL;
				*addrlen = 0;
			}
		}
	} else {
		ret = FUNC3(sock->socket, buf, FUNC0(buflen), flags);
		ret = (ret == SOCK_CONN_ERR) ? -1 : ret;
	}

	return ret;
}