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
typedef  int u16 ;
struct iovec {int* iov_base; int /*<<< orphan*/  iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SPLICE_F_GIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,struct iovec*,int,int /*<<< orphan*/ ) ; 

void FUNC6(int *ptr, u16 pkey)
{
	int pipe_ret, vmsplice_ret;
	struct iovec iov;
	int pipe_fds[2];

	pipe_ret = FUNC2(pipe_fds);

	FUNC4(pipe_ret == 0);
	FUNC1("disabling access to PKEY[%02d], "
		 "having kernel vmsplice from buffer\n", pkey);
	FUNC3(pkey);
	iov.iov_base = ptr;
	iov.iov_len = PAGE_SIZE;
	vmsplice_ret = FUNC5(pipe_fds[1], &iov, 1, SPLICE_F_GIFT);
	FUNC1("vmsplice() ret: %d\n", vmsplice_ret);
	FUNC4(vmsplice_ret == -1);

	FUNC0(pipe_fds[0]);
	FUNC0(pipe_fds[1]);
}