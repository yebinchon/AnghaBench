#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dirent {int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_namlen; } ;
struct TYPE_6__ {int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
struct TYPE_7__ {struct dirent ret; int /*<<< orphan*/  handle; int /*<<< orphan*/  dirname; } ;
typedef  TYPE_2__ DIR ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_NO_MORE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct dirent *
FUNC6(DIR *d)
{
	WIN32_FIND_DATA fd;

	if (d->handle == INVALID_HANDLE_VALUE)
	{
		d->handle = FUNC0(d->dirname, &fd);
		if (d->handle == INVALID_HANDLE_VALUE)
		{
			/* If there are no files, force errno=0 (unlike mingw) */
			if (FUNC2() == ERROR_FILE_NOT_FOUND)
				errno = 0;
			else
				FUNC3(FUNC2());
			return NULL;
		}
	}
	else
	{
		if (!FUNC1(d->handle, &fd))
		{
			/* If there are no more files, force errno=0 (like mingw) */
			if (FUNC2() == ERROR_NO_MORE_FILES)
				errno = 0;
			else
				FUNC3(FUNC2());
			return NULL;
		}
	}
	FUNC4(d->ret.d_name, fd.cFileName);	/* Both strings are MAX_PATH long */
	d->ret.d_namlen = FUNC5(d->ret.d_name);

	return &d->ret;
}