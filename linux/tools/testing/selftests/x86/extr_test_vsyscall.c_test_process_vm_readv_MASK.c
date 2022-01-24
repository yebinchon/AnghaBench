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
struct iovec {char* iov_base; int iov_len; } ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iovec*,int,struct iovec*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ vsyscall_map_r ; 

__attribute__((used)) static int FUNC4(void)
{
#ifdef __x86_64__
	char buf[4096];
	struct iovec local, remote;
	int ret;

	FUNC2("[RUN]\tprocess_vm_readv() from vsyscall page\n");

	local.iov_base = buf;
	local.iov_len = 4096;
	remote.iov_base = (void *)0xffffffffff600000;
	remote.iov_len = 4096;
	ret = FUNC3(FUNC0(), &local, 1, &remote, 1, 0);
	if (ret != 4096) {
		FUNC2("[OK]\tprocess_vm_readv() failed (ret = %d, errno = %d)\n", ret, errno);
		return 0;
	}

	if (vsyscall_map_r) {
		if (!FUNC1(buf, (const void *)0xffffffffff600000, 4096)) {
			FUNC2("[OK]\tIt worked and read correct data\n");
		} else {
			FUNC2("[FAIL]\tIt worked but returned incorrect data\n");
			return 1;
		}
	}
#endif

	return 0;
}