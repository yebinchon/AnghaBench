#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * s6_addr; } ;
struct sockaddr_in6 {unsigned int sin6_scope_id; TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EAI_FAMILY ; 
 int EAI_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct sockaddr const) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr const) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void const*,char*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proxychains_resolver ; 
 int FUNC8 (char*,int,char*,int) ; 
 size_t FUNC9 (char*) ; 
 int FUNC10 (struct sockaddr const*,int,char*,int,char*,int,int) ; 

int FUNC11(const struct sockaddr *sa, socklen_t salen,
	           char *host, socklen_t hostlen, char *serv,
	           socklen_t servlen, int flags)
{
	FUNC0();
	FUNC1();

	if(!proxychains_resolver) {
		return FUNC10(sa, salen, host, hostlen, serv, servlen, flags);
	} else {
		if(!salen || !(FUNC2(*sa) == AF_INET || FUNC2(*sa) == AF_INET6))
			return EAI_FAMILY;
		int v6 = FUNC2(*sa) == AF_INET6;
		if(salen < (v6?sizeof(struct sockaddr_in6):sizeof(struct sockaddr_in)))
			return EAI_FAMILY;
		if(hostlen) {
			unsigned char v4inv6buf[4];
			const void *ip = v6 ? (void*)&((struct sockaddr_in6*)sa)->sin6_addr
			                    : (void*)&((struct sockaddr_in*)sa)->sin_addr;
			unsigned scopeid = 0;
			if(v6) {
				if(FUNC5(&((struct sockaddr_in6*)sa)->sin6_addr)) {
					FUNC6(v4inv6buf, &((struct sockaddr_in6*)sa)->sin6_addr.s6_addr[12], 4);
					ip = v4inv6buf;
					v6 = 0;
				} else
					scopeid = ((struct sockaddr_in6 *)sa)->sin6_scope_id;
			}
			if(!FUNC4(v6?AF_INET6:AF_INET,ip,host,hostlen))
				return EAI_OVERFLOW;
			if(scopeid) {
				size_t l = FUNC9(host);
				if(FUNC8(host+l, hostlen-l, "%%%u", scopeid) >= hostlen-l)
					return EAI_OVERFLOW;
			}
		}
		if(servlen) {
			if(FUNC8(serv, servlen, "%d", FUNC7(FUNC3(*sa))) >= servlen)
				return EAI_OVERFLOW;
		}
	}
	return 0;
}