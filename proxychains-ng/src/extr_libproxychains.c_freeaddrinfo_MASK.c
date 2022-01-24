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
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  proxychains_resolver ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 

void FUNC4(struct addrinfo *res) {
	FUNC0();
	FUNC1("freeaddrinfo %p \n", (void *) res);

	if(!proxychains_resolver)
		FUNC3(res);
	else
		FUNC2(res);
}