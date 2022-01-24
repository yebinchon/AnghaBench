#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_1__ workBuffer; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(PGconn *conn)
{
	PQExpBufferData valueBuf;

	/* Get the parameter name */
	if (FUNC1(&conn->workBuffer, conn))
		return EOF;
	/* Get the parameter value (could be large) */
	FUNC0(&valueBuf);
	if (FUNC1(&valueBuf, conn))
	{
		FUNC3(&valueBuf);
		return EOF;
	}
	/* And save it */
	FUNC2(conn, conn->workBuffer.data, valueBuf.data);
	FUNC3(&valueBuf);
	return 0;
}