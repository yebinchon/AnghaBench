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
typedef  int /*<<< orphan*/  interval ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(interval * i, char *str)
{
	char	   *tmp;

	errno = 0;
	tmp = FUNC0(i);

	if (!tmp)
		return -errno;

	FUNC2(str, tmp, FUNC3(tmp));
	FUNC1(tmp);
	return 0;
}