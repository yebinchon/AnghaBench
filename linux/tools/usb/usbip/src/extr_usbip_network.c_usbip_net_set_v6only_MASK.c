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
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 

int FUNC2(int sockfd)
{
	const int val = 1;
	int ret;

	ret = FUNC1(sockfd, IPPROTO_IPV6, IPV6_V6ONLY, &val, sizeof(val));
	if (ret < 0)
		FUNC0("setsockopt: IPV6_V6ONLY");

	return ret;
}