#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char const*,char*,int,int /*<<< orphan*/  const*,char const* const*,int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(PGconn *conn,
				  const char *command,
				  int nParams,
				  const Oid *paramTypes,
				  const char *const *paramValues,
				  const int *paramLengths,
				  const int *paramFormats,
				  int resultFormat)
{
	if (!FUNC1(conn))
		return 0;

	/* check the arguments */
	if (!command)
	{
		FUNC3(&conn->errorMessage,
						  FUNC2("command string is a null pointer\n"));
		return 0;
	}
	if (nParams < 0 || nParams > 65535)
	{
		FUNC3(&conn->errorMessage,
						  FUNC2("number of parameters must be between 0 and 65535\n"));
		return 0;
	}

	return FUNC0(conn,
						   command,
						   "",	/* use unnamed statement */
						   nParams,
						   paramTypes,
						   paramValues,
						   paramLengths,
						   paramFormats,
						   resultFormat);
}