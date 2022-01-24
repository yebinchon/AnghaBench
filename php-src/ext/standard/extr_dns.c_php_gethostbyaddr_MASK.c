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
typedef  int /*<<< orphan*/  zend_string ;
struct in_addr {int s_addr; } ;
struct in6_addr {int s_addr; } ;
struct hostent {char* h_name; } ;
typedef  int /*<<< orphan*/  addr6 ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 struct hostent* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string *FUNC5(char *ip)
{
#if HAVE_IPV6 && HAVE_INET_PTON
	struct in6_addr addr6;
#endif
	struct in_addr addr;
	struct hostent *hp;

#if HAVE_IPV6 && HAVE_INET_PTON
	if (inet_pton(AF_INET6, ip, &addr6)) {
		hp = gethostbyaddr((char *) &addr6, sizeof(addr6), AF_INET6);
	} else if (inet_pton(AF_INET, ip, &addr)) {
		hp = gethostbyaddr((char *) &addr, sizeof(addr), AF_INET);
	} else {
		return NULL;
	}
#else
	addr.s_addr = FUNC1(ip);

	if (addr.s_addr == -1) {
		return NULL;
	}

	hp = FUNC0((char *) &addr, sizeof(addr), AF_INET);
#endif

	if (!hp || hp->h_name == NULL || hp->h_name[0] == '\0') {
		return FUNC4(ip, FUNC3(ip), 0);
	}

	return FUNC4(hp->h_name, FUNC3(hp->h_name), 0);
}