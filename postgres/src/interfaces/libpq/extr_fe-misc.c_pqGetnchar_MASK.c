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
struct TYPE_3__ {scalar_t__ Pfdebug; scalar_t__ inCursor; scalar_t__ inBuffer; scalar_t__ inEnd; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,size_t) ; 

int
FUNC3(char *s, size_t len, PGconn *conn)
{
	if (len > (size_t) (conn->inEnd - conn->inCursor))
		return EOF;

	FUNC2(s, conn->inBuffer + conn->inCursor, len);
	/* no terminating null */

	conn->inCursor += len;

	if (conn->Pfdebug)
	{
		FUNC0(conn->Pfdebug, "From backend (%lu)> ", (unsigned long) len);
		FUNC1(conn->Pfdebug, s, len);
		FUNC0(conn->Pfdebug, "\n");
	}

	return 0;
}