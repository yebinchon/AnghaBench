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
typedef  int uint8 ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sockaddr ;

/* Variables and functions */
 int /*<<< orphan*/  g_sock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

char *
FUNC3()
{
	static char ipaddr[32];
	struct sockaddr_in sockaddr;
	socklen_t len = sizeof(sockaddr);
	if (FUNC0(g_sock, (struct sockaddr *) &sockaddr, &len) == 0)
	{
		uint8 *ip = (uint8 *) & sockaddr.sin_addr;
		FUNC1(ipaddr, "%d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3]);
	}
	else
		FUNC2(ipaddr, "127.0.0.1");
	return ipaddr;
}