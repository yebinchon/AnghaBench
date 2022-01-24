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
 unsigned long* MAP_FAILED ; 
 int MAP_POPULATE ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  MMAP_SZ ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int*,int) ; 
 int FUNC3 (int,int*,int) ; 

__attribute__((used)) static int FUNC4(int sock, unsigned long *smap, int fd)
{
	int ret, buf = 0;

	smap = FUNC1(0, MMAP_SZ, PROT_READ | PROT_WRITE,
			MAP_PRIVATE | MAP_POPULATE, fd, 0);
	FUNC0(smap == MAP_FAILED, "mmap()");

	FUNC0(*smap != 0xdeadbabe, "MAP_PRIVATE | MAP_POPULATE changed file");

	ret = FUNC3(sock, &buf, sizeof(int));
	FUNC0(ret <= 0, "write(sock)");

	ret = FUNC2(sock, &buf, sizeof(int));
	FUNC0(ret <= 0, "read(sock)");

	FUNC0(*smap == 0x22222BAD, "MAP_POPULATE didn't COW private page");
	FUNC0(*smap != 0xdeadbabe, "mapping was corrupted");

	return 0;
}