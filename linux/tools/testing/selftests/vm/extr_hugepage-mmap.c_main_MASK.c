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
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  FILE_NAME ; 
 int /*<<< orphan*/  FLAGS ; 
 int /*<<< orphan*/  LENGTH ; 
 void* MAP_FAILED ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PROTECTION ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,void*) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 

int FUNC11(void)
{
	void *addr;
	int fd, ret;

	fd = FUNC5(FILE_NAME, O_CREAT | O_RDWR, 0755);
	if (fd < 0) {
		FUNC6("Open failed");
		FUNC2(1);
	}

	addr = FUNC3(ADDR, LENGTH, PROTECTION, FLAGS, fd, 0);
	if (addr == MAP_FAILED) {
		FUNC6("mmap");
		FUNC9(FILE_NAME);
		FUNC2(1);
	}

	FUNC7("Returned address is %p\n", addr);
	FUNC0(addr);
	FUNC10(addr);
	ret = FUNC8(addr);

	FUNC4(addr, LENGTH);
	FUNC1(fd);
	FUNC9(FILE_NAME);

	return ret;
}