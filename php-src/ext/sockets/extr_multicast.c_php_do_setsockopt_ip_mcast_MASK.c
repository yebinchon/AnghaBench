#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct in_addr {int dummy; } ;
typedef  int socklen_t ;
struct TYPE_6__ {int /*<<< orphan*/  bsd_socket; } ;
typedef  TYPE_1__ php_socket ;
typedef  int /*<<< orphan*/  ipv4_mcast_ttl_lback ;
typedef  int /*<<< orphan*/  if_addr ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
#define  IP_MULTICAST_IF 136 
#define  IP_MULTICAST_LOOP 135 
#define  IP_MULTICAST_TTL 134 
 int /*<<< orphan*/  IS_TRUE ; 
#define  PHP_MCAST_BLOCK_SOURCE 133 
#define  PHP_MCAST_JOIN_GROUP 132 
#define  PHP_MCAST_JOIN_SOURCE_GROUP 131 
#define  PHP_MCAST_LEAVE_GROUP 130 
#define  PHP_MCAST_LEAVE_SOURCE_GROUP 129 
#define  PHP_MCAST_UNBLOCK_SOURCE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC8 (unsigned int,TYPE_1__*,struct in_addr*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int,void*,int) ; 

int FUNC10(php_socket *php_sock,
							   int level,
							   int optname,
							   zval *arg4)
{
	unsigned int	if_index;
	struct in_addr	if_addr;
	void 			*opt_ptr;
	socklen_t		optlen;
	unsigned char	ipv4_mcast_ttl_lback;
	int				retval;

	switch (optname) {
	case PHP_MCAST_JOIN_GROUP:
	case PHP_MCAST_LEAVE_GROUP:
#ifdef HAS_MCAST_EXT
	case PHP_MCAST_BLOCK_SOURCE:
	case PHP_MCAST_UNBLOCK_SOURCE:
	case PHP_MCAST_JOIN_SOURCE_GROUP:
	case PHP_MCAST_LEAVE_SOURCE_GROUP:
#endif
		if (FUNC5(php_sock, level, optname, arg4) == FAILURE) {
			return FAILURE;
		} else {
			return SUCCESS;
		}

	case IP_MULTICAST_IF:
		if (FUNC7(arg4, &if_index) == FAILURE) {
			return FAILURE;
		}

		if (FUNC8(if_index, php_sock, &if_addr) == FAILURE) {
			return FAILURE;
		}
		opt_ptr = &if_addr;
		optlen	= sizeof(if_addr);
		goto dosockopt;

	case IP_MULTICAST_LOOP:
		FUNC3(arg4);
		ipv4_mcast_ttl_lback = (unsigned char) (FUNC2(arg4) == IS_TRUE);
		goto ipv4_loop_ttl;

	case IP_MULTICAST_TTL:
		FUNC4(arg4);
		if (FUNC1(arg4) < 0L || FUNC1(arg4) > 255L) {
			FUNC6(NULL, E_WARNING,
					"Expected a value between 0 and 255");
			return FAILURE;
		}
		ipv4_mcast_ttl_lback = (unsigned char) FUNC1(arg4);
ipv4_loop_ttl:
		opt_ptr = &ipv4_mcast_ttl_lback;
		optlen	= sizeof(ipv4_mcast_ttl_lback);
		goto dosockopt;
	}

	return 1;

dosockopt:
	retval = FUNC9(php_sock->bsd_socket, level, optname, opt_ptr, optlen);
	if (retval != 0) {
		FUNC0(php_sock, "unable to set socket option", errno);
		return FAILURE;
	}

	return SUCCESS;
}