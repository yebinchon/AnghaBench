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
struct TYPE_3__ {scalar_t__ connofs; scalar_t__ keyword; } ;
typedef  TYPE_1__ internalPQconninfoOption ;
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBufferData ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* PQconninfoOptions ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

PQconninfoOption *
FUNC5(PGconn *conn)
{
	PQExpBufferData errorBuf;
	PQconninfoOption *connOptions;

	if (conn == NULL)
		return NULL;

	/* We don't actually report any errors here, but callees want a buffer */
	FUNC3(&errorBuf);
	if (FUNC0(errorBuf))
		return NULL;			/* out of memory already :-( */

	connOptions = FUNC1(&errorBuf);

	if (connOptions != NULL)
	{
		const internalPQconninfoOption *option;

		for (option = PQconninfoOptions; option->keyword; option++)
		{
			char	  **connmember;

			if (option->connofs < 0)
				continue;

			connmember = (char **) ((char *) conn + option->connofs);

			if (*connmember)
				FUNC2(connOptions, option->keyword, *connmember,
								  &errorBuf, true, false);
		}
	}

	FUNC4(&errorBuf);

	return connOptions;
}