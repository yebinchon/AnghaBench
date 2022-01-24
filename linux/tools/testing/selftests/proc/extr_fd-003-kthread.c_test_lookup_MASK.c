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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void FUNC2(int fd)
{
	char buf[64];
	unsigned int u;
	int i;

	for (i = INT_MIN; i < INT_MIN + 1024; i++) {
		FUNC0(buf, sizeof(buf), "%d", i);
		FUNC1(fd, buf);
	}
	for (i = -1024; i < 1024; i++) {
		FUNC0(buf, sizeof(buf), "%d", i);
		FUNC1(fd, buf);
	}
	for (u = INT_MAX - 1024; u < (unsigned int)INT_MAX + 1024; u++) {
		FUNC0(buf, sizeof(buf), "%u", u);
		FUNC1(fd, buf);
	}
	for (u = UINT_MAX - 1024; u != 0; u++) {
		FUNC0(buf, sizeof(buf), "%u", u);
		FUNC1(fd, buf);
	}
}