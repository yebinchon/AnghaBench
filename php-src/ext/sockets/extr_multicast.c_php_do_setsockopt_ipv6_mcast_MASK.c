#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int socklen_t ;
struct TYPE_5__ {int /*<<< orphan*/  bsd_socket; } ;
typedef  TYPE_1__ php_socket ;
typedef  int /*<<< orphan*/  ov ;
typedef  int /*<<< orphan*/  if_index ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
#define  IPV6_MULTICAST_HOPS 136 
#define  IPV6_MULTICAST_IF 135 
#define  IPV6_MULTICAST_LOOP 134 
 int IS_TRUE ; 
#define  PHP_MCAST_BLOCK_SOURCE 133 
#define  PHP_MCAST_JOIN_GROUP 132 
#define  PHP_MCAST_JOIN_SOURCE_GROUP 131 
#define  PHP_MCAST_LEAVE_GROUP 130 
#define  PHP_MCAST_LEAVE_SOURCE_GROUP 129 
#define  PHP_MCAST_UNBLOCK_SOURCE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,void*,int) ; 

int FUNC9(php_socket *php_sock,
								 int level,
								 int optname,
								 zval *arg4)
{
	unsigned int	if_index;
	void			*opt_ptr;
	socklen_t		optlen;
	int				ov;
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

	case IPV6_MULTICAST_IF:
		if (FUNC7(arg4, &if_index) == FAILURE) {
			return FAILURE;
		}

		opt_ptr = &if_index;
		optlen	= sizeof(if_index);
		goto dosockopt;

	case IPV6_MULTICAST_LOOP:
		FUNC3(arg4);
		ov = (int) FUNC2(arg4) == IS_TRUE;
		goto ipv6_loop_hops;
	case IPV6_MULTICAST_HOPS:
		FUNC4(arg4);
		if (FUNC1(arg4) < -1L || FUNC1(arg4) > 255L) {
			FUNC6(NULL, E_WARNING,
					"Expected a value between -1 and 255");
			return FAILURE;
		}
		ov = (int) FUNC1(arg4);
ipv6_loop_hops:
		opt_ptr = &ov;
		optlen	= sizeof(ov);
		goto dosockopt;
	}

	return 1; /* not handled */

dosockopt:
	retval = FUNC8(php_sock->bsd_socket, level, optname, opt_ptr, optlen);
	if (retval != 0) {
		FUNC0(php_sock, "unable to set socket option", errno);
		return FAILURE;
	}

	return SUCCESS;
}