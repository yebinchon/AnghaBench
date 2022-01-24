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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int INT_MAX ; 
 int INT_MIN ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(unsigned int fd)
{
	char buf[64];
	unsigned int c;
	unsigned int u;
	int i;

	FUNC0(buf, sizeof(buf), "/proc/self/fd/%u", fd);
	FUNC2(buf);

	/* leading junk */
	for (c = 1; c <= 255; c++) {
		if (c == '/')
			continue;
		FUNC0(buf, sizeof(buf), "/proc/self/fd/%c%u", c, fd);
		FUNC1(buf);
	}

	/* trailing junk */
	for (c = 1; c <= 255; c++) {
		if (c == '/')
			continue;
		FUNC0(buf, sizeof(buf), "/proc/self/fd/%u%c", fd, c);
		FUNC1(buf);
	}

	for (i = INT_MIN; i < INT_MIN + 1024; i++) {
		FUNC0(buf, sizeof(buf), "/proc/self/fd/%d", i);
		FUNC1(buf);
	}
	for (i = -1024; i < 0; i++) {
		FUNC0(buf, sizeof(buf), "/proc/self/fd/%d", i);
		FUNC1(buf);
	}
	for (u = INT_MAX - 1024; u <= (unsigned int)INT_MAX + 1024; u++) {
		FUNC0(buf, sizeof(buf), "/proc/self/fd/%u", u);
		FUNC1(buf);
	}
	for (u = UINT_MAX - 1024; u != 0; u++) {
		FUNC0(buf, sizeof(buf), "/proc/self/fd/%u", u);
		FUNC1(buf);
	}


}