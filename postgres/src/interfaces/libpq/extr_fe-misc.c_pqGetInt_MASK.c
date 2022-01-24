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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_3__ {int inCursor; int inBuffer; scalar_t__ Pfdebug; int /*<<< orphan*/  noticeHooks; int /*<<< orphan*/  inEnd; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long) ; 

int
FUNC5(int *result, size_t bytes, PGconn *conn)
{
	uint16		tmp2;
	uint32		tmp4;

	switch (bytes)
	{
		case 2:
			if (conn->inCursor + 2 > conn->inEnd)
				return EOF;
			FUNC1(&tmp2, conn->inBuffer + conn->inCursor, 2);
			conn->inCursor += 2;
			*result = (int) FUNC2(tmp2);
			break;
		case 4:
			if (conn->inCursor + 4 > conn->inEnd)
				return EOF;
			FUNC1(&tmp4, conn->inBuffer + conn->inCursor, 4);
			conn->inCursor += 4;
			*result = (int) FUNC3(tmp4);
			break;
		default:
			FUNC4(&conn->noticeHooks,
							 "integer of size %lu not supported by pqGetInt",
							 (unsigned long) bytes);
			return EOF;
	}

	if (conn->Pfdebug)
		FUNC0(conn->Pfdebug, "From backend (#%lu)> %d\n", (unsigned long) bytes, *result);

	return 0;
}