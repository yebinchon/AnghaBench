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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int FUNC0 (char,char,char,char,char) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(PyObject *exc, int *sqlerrcode)
{
	PyObject   *sqlstate;
	char	   *buffer;

	sqlstate = FUNC1(exc, "sqlstate");
	if (sqlstate == NULL)
		return;

	buffer = FUNC2(sqlstate);
	if (FUNC4(buffer) == 5 &&
		FUNC5(buffer, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ") == 5)
	{
		*sqlerrcode = FUNC0(buffer[0], buffer[1], buffer[2],
									buffer[3], buffer[4]);
	}

	FUNC3(sqlstate);
}