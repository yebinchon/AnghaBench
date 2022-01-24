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
struct hostent {char* h_name; char** h_addr_list; char** h_aliases; int h_length; int /*<<< orphan*/  h_addrtype; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char*) ; 
 int /*<<< orphan*/  proxychains_resolver ; 
 struct hostent* FUNC4 (void const*,int,int) ; 

struct hostent *FUNC5(const void *addr, socklen_t len, int type) {
	FUNC0();
	FUNC1("TODO: proper gethostbyaddr hook\n");

	static char buf[16];
	static char ipv4[4];
	static char *list[2];
	static char *aliases[1];
	static struct hostent he;

	if(!proxychains_resolver)
		return FUNC4(addr, len, type);
	else {

		FUNC1("len %u\n", len);
		if(len != 4)
			return NULL;
		he.h_name = buf;
		FUNC2(ipv4, addr, 4);
		list[0] = ipv4;
		list[1] = NULL;
		he.h_addr_list = list;
		he.h_addrtype = AF_INET;
		aliases[0] = NULL;
		he.h_aliases = aliases;
		he.h_length = 4;
		FUNC3((unsigned char *) addr, buf);
		return &he;
	}
	return NULL;
}