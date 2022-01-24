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
struct in_addr {struct in_addr* s_addr; } ;
struct hostent {struct in_addr* h_addr_list; } ;

/* Variables and functions */
 char* FUNC0 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC1 (struct in_addr**,struct in_addr*,int) ; 
 struct hostent* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string *FUNC5(char *name)
{
	struct hostent *hp;
	struct in_addr *h_addr_0; /* Don't call this h_addr, it's a macro! */
	struct in_addr in;
	char *address;

	hp = FUNC2(name);
	if (!hp) {
		return FUNC4(name, FUNC3(name), 0);
	}

	/* On macos h_addr_list entries may be misaligned. */
	FUNC1(&h_addr_0, &hp->h_addr_list[0], sizeof(struct in_addr *));
	if (!h_addr_0) {
		return FUNC4(name, FUNC3(name), 0);
	}

	FUNC1(&in.s_addr, h_addr_0, sizeof(in.s_addr));

	address = FUNC0(in);
	return FUNC4(address, FUNC3(address), 0);
}