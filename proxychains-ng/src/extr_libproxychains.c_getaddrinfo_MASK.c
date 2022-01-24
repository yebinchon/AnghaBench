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
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int FUNC2 (char const*,char const*,struct addrinfo const*,struct addrinfo**) ; 
 scalar_t__ proxychains_resolver ; 
 int FUNC3 (char const*,char const*,struct addrinfo const*,struct addrinfo**) ; 

int FUNC4(const char *node, const char *service, const struct addrinfo *hints, struct addrinfo **res) {
	FUNC0();
	FUNC1("getaddrinfo: %s %s\n", node ? node : "null", service ? service : "null");

	if(proxychains_resolver)
		return FUNC2(node, service, hints, res);
	else
		return FUNC3(node, service, hints, res);
}