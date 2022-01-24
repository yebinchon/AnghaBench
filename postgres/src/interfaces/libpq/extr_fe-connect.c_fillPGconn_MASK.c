#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ connofs; scalar_t__ keyword; } ;
typedef  TYPE_1__ internalPQconninfoOption ;
struct TYPE_6__ {int /*<<< orphan*/  errorMessage; } ;
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 TYPE_1__* PQconninfoOptions ; 
 char* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static bool
FUNC5(PGconn *conn, PQconninfoOption *connOptions)
{
	const internalPQconninfoOption *option;

	for (option = PQconninfoOptions; option->keyword; option++)
	{
		if (option->connofs >= 0)
		{
			const char *tmp = FUNC0(connOptions, option->keyword);

			if (tmp)
			{
				char	  **connmember = (char **) ((char *) conn + option->connofs);

				if (*connmember)
					FUNC1(*connmember);
				*connmember = FUNC4(tmp);
				if (*connmember == NULL)
				{
					FUNC3(&conn->errorMessage,
									  FUNC2("out of memory\n"));
					return false;
				}
			}
		}
	}

	return true;
}