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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MMAP_SZ ; 
 int /*<<< orphan*/  MS_SYNC ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int FUNC1 (int,unsigned long*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,unsigned long*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 

int FUNC11(int argc, char **argv)
{
	int sock[2], child, ret;
	FILE *ftmp;
	unsigned long *smap;

	ftmp = FUNC10();
	FUNC0(ftmp == 0, "tmpfile()");

	ret = FUNC5(FUNC3(ftmp), MMAP_SZ);
	FUNC0(ret, "ftruncate()");

	smap = FUNC6(0, MMAP_SZ, PROT_READ | PROT_WRITE,
			MAP_SHARED, FUNC3(ftmp), 0);
	FUNC0(smap == MAP_FAILED, "mmap()");

	*smap = 0xdeadbabe;
	/* Probably unnecessary, but let it be. */
	ret = FUNC7(smap, MMAP_SZ, MS_SYNC);
	FUNC0(ret, "msync()");

	ret = FUNC9(PF_LOCAL, SOCK_SEQPACKET, 0, sock);
	FUNC0(ret, "socketpair()");

	child = FUNC4();
	FUNC0(child == -1, "fork()");

	if (child) {
		ret = FUNC2(sock[0]);
		FUNC0(ret, "close()");

		return FUNC8(sock[1], smap, child);
	}

	ret = FUNC2(sock[1]);
	FUNC0(ret, "close()");

	return FUNC1(sock[0], smap, FUNC3(ftmp));
}