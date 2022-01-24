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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MMAP_SZ ; 
 int /*<<< orphan*/  MS_SYNC ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int*,int) ; 

__attribute__((used)) static int FUNC7(int sock, unsigned long *smap, int child)
{
	int status, ret;

	ret = FUNC4(sock, &status, sizeof(int));
	FUNC0(ret <= 0, "read(sock)");

	*smap = 0x22222BAD;
	ret = FUNC3(smap, MMAP_SZ, MS_SYNC);
	FUNC0(ret, "msync()");

	ret = FUNC6(sock, &status, sizeof(int));
	FUNC0(ret <= 0, "write(sock)");

	FUNC5(child, &status, 0);
	FUNC0(!FUNC2(status), "child in unexpected state");

	return FUNC1(status);
}