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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sockaddr ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  g_sock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 

RD_BOOL
FUNC1()
{
	struct sockaddr_in sockaddr;
	socklen_t len = sizeof(sockaddr);
	if (FUNC0(g_sock, (struct sockaddr *) &sockaddr, &len))
		return True;
	return False;
}