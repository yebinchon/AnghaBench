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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EAI_AGAIN ; 
 int EAI_FAIL ; 
 int EAI_FAMILY ; 
 int EAI_MEMORY ; 
 int NI_NAMEREQD ; 
 int FUNC0 (struct sockaddr const*,int,char*,int,char*,int,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char*,int) ; 
 int FUNC5 (struct sockaddr const*,int,char*,int,char*,int,int) ; 

int
FUNC6(const struct sockaddr *sa, int salen,
			char *node, int nodelen,
			char *service, int servicelen, int flags)
{
#ifdef WIN32

	/*
	 * If Windows has native IPv6 support, use the native Windows routine.
	 * Otherwise, fall through and use our own code.
	 */
	if (haveNativeWindowsIPv6routines())
		return (*getnameinfo_ptr) (sa, salen, node, nodelen,
								   service, servicelen, flags);
#endif

	/* Invalid arguments. */
	if (sa == NULL || (node == NULL && service == NULL))
		return EAI_FAIL;

#ifdef	HAVE_IPV6
	if (sa->sa_family == AF_INET6)
		return EAI_FAMILY;
#endif

	/* Unsupported flags. */
	if (flags & NI_NAMEREQD)
		return EAI_AGAIN;

	if (node)
	{
		if (sa->sa_family == AF_INET)
		{
			if (FUNC2(AF_INET,
								 &((struct sockaddr_in *) sa)->sin_addr,
								 sa->sa_family == AF_INET ? 32 : 128,
								 node, nodelen) == NULL)
				return EAI_MEMORY;
		}
		else
			return EAI_MEMORY;
	}

	if (service)
	{
		int			ret = -1;

		if (sa->sa_family == AF_INET)
		{
			ret = FUNC4(service, servicelen, "%d",
						   FUNC3(((struct sockaddr_in *) sa)->sin_port));
		}
		if (ret < 0 || ret >= servicelen)
			return EAI_MEMORY;
	}

	return 0;
}