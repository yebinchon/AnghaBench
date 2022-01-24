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
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 

int FUNC2(int sockfd)
{
	const int val = 1;
	int ret;

	ret = FUNC1(sockfd, SOL_SOCKET, SO_REUSEADDR, &val, sizeof(val));
	if (ret < 0)
		FUNC0("setsockopt: SO_REUSEADDR");

	return ret;
}