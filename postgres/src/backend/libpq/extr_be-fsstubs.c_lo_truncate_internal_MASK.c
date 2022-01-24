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
typedef  int /*<<< orphan*/  int64 ;
typedef  size_t int32 ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ LargeObjectDesc ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int IFS_WRLOCK ; 
 TYPE_1__** cookies ; 
 size_t cookies_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int32 fd, int64 len)
{
	LargeObjectDesc *lobj;

	if (fd < 0 || fd >= cookies_size || cookies[fd] == NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_OBJECT),
				 FUNC2("invalid large-object descriptor: %d", fd)));
	lobj = cookies[fd];

	/* see comment in lo_read() */
	if ((lobj->flags & IFS_WRLOCK) == 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC2("large object descriptor %d was not opened for writing",
						fd)));

	FUNC3(lobj, len);
}