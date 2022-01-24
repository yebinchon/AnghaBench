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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static ssize_t
FUNC1(const char *pathname)
{
	FUNC0();

	/* Currently not used, so not supported */
	errno = ENOSYS;
	return -1;
}