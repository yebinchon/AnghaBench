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
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC2(int fd, const char *pathname)
{
	char stx[256] __attribute__((aligned(8)));
	int rv;

	rv = FUNC1(fd, pathname, AT_SYMLINK_NOFOLLOW, 0, (void *)stx);
	FUNC0(rv == -1 && errno == ENOENT);
}