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
typedef  int /*<<< orphan*/  rbuf ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int FUNC1 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int fdr)
{
	char rbuf[1];
	int ret;

	ret = FUNC1(fdr, rbuf, sizeof(rbuf), 0);
	if (ret != -1 || errno != EAGAIN)
		FUNC0(1, 0, "recv: not empty as expected (%d, %d)", ret, errno);
}