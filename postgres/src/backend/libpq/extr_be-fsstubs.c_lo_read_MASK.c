#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ LargeObjectDesc ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int IFS_RDLOCK ; 
 TYPE_1__** cookies ; 
 int cookies_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (TYPE_1__*,char*,int) ; 

int
FUNC4(int fd, char *buf, int len)
{
	int			status;
	LargeObjectDesc *lobj;

	if (fd < 0 || fd >= cookies_size || cookies[fd] == NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_OBJECT),
				 FUNC2("invalid large-object descriptor: %d", fd)));
	lobj = cookies[fd];

	/*
	 * Check state.  inv_read() would throw an error anyway, but we want the
	 * error to be about the FD's state not the underlying privilege; it might
	 * be that the privilege exists but user forgot to ask for read mode.
	 */
	if ((lobj->flags & IFS_RDLOCK) == 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC2("large object descriptor %d was not opened for reading",
						fd)));

	status = FUNC3(lobj, buf, len);

	return status;
}