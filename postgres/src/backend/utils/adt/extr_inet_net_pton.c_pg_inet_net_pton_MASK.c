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

/* Variables and functions */
 int /*<<< orphan*/  EAFNOSUPPORT ; 
#define  PGSQL_AF_INET 129 
#define  PGSQL_AF_INET6 128 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (char const*,void*,size_t) ; 
 int FUNC1 (char const*,void*,size_t) ; 
 int FUNC2 (char const*,void*) ; 
 int FUNC3 (char const*,void*) ; 

int
FUNC4(int af, const char *src, void *dst, size_t size)
{
	switch (af)
	{
		case PGSQL_AF_INET:
			return size == -1 ?
				FUNC2(src, dst) :
				FUNC0(src, dst, size);
		case PGSQL_AF_INET6:
			return size == -1 ?
				FUNC3(src, dst) :
				FUNC1(src, dst, size);
		default:
			errno = EAFNOSUPPORT;
			return -1;
	}
}