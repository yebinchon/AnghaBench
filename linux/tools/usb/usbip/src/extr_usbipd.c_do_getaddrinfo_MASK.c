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
struct addrinfo {int ai_family; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  usbip_port_string ; 

__attribute__((used)) static struct addrinfo *FUNC4(char *host, int ai_family)
{
	struct addrinfo hints, *ai_head;
	int rc;

	FUNC3(&hints, 0, sizeof(hints));
	hints.ai_family   = ai_family;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags    = AI_PASSIVE;

	rc = FUNC2(host, usbip_port_string, &hints, &ai_head);
	if (rc) {
		FUNC0("failed to get a network address %s: %s", usbip_port_string,
		    FUNC1(rc));
		return NULL;
	}

	return ai_head;
}