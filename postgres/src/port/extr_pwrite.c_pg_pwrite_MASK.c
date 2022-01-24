#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_3__ {int /*<<< orphan*/  Offset; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ OVERLAPPED ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,void const*,size_t) ; 

ssize_t
FUNC6(int fd, const void *buf, size_t size, off_t offset)
{
#ifdef WIN32
	OVERLAPPED	overlapped = {0};
	HANDLE		handle;
	DWORD		result;

	handle = (HANDLE) _get_osfhandle(fd);
	if (handle == INVALID_HANDLE_VALUE)
	{
		errno = EBADF;
		return -1;
	}

	overlapped.Offset = offset;
	if (!WriteFile(handle, buf, size, &result, &overlapped))
	{
		_dosmaperr(GetLastError());
		return -1;
	}

	return result;
#else
	if (FUNC4(fd, offset, SEEK_SET) < 0)
		return -1;

	return FUNC5(fd, buf, size);
#endif
}