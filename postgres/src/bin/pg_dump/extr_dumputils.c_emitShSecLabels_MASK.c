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
typedef  int /*<<< orphan*/  PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void
FUNC6(PGconn *conn, PGresult *res, PQExpBuffer buffer,
				const char *objtype, const char *objname)
{
	int			i;

	for (i = 0; i < FUNC1(res); i++)
	{
		char	   *provider = FUNC0(res, i, 0);
		char	   *label = FUNC0(res, i, 1);

		/* must use fmtId result before calling it again */
		FUNC2(buffer,
						  "SECURITY LABEL FOR %s ON %s",
						  FUNC5(provider), objtype);
		FUNC2(buffer,
						  " %s IS ",
						  FUNC5(objname));
		FUNC4(buffer, label, conn);
		FUNC3(buffer, ";\n");
	}
}