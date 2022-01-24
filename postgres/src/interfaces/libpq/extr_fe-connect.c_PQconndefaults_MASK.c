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
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBufferData ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

PQconninfoOption *
FUNC6(void)
{
	PQExpBufferData errorBuf;
	PQconninfoOption *connOptions;

	/* We don't actually report any errors here, but callees want a buffer */
	FUNC4(&errorBuf);
	if (FUNC0(errorBuf))
		return NULL;			/* out of memory already :-( */

	connOptions = FUNC3(&errorBuf);
	if (connOptions != NULL)
	{
		/* pass NULL errorBuf to ignore errors */
		if (!FUNC2(connOptions, NULL))
		{
			FUNC1(connOptions);
			connOptions = NULL;
		}
	}

	FUNC5(&errorBuf);
	return connOptions;
}