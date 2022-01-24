#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char const* data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(PQExpBuffer buf, const char *dbname)
{
	const char *s;
	bool complex;

	/*
	 * If the name is plain ASCII characters, emit a trivial "\connect "foo"".
	 * For other names, even many not technically requiring it, skip to the
	 * general case.  No database has a zero-length name.
	 */
	complex = false;

	for (s = dbname; *s; s++)
	{
		if (*s == '\n' || *s == '\r')
		{
			FUNC6(stderr,
					FUNC0("database name contains a newline or carriage return: \"%s\"\n"),
					dbname);
			FUNC4(EXIT_FAILURE);
		}

		if (!((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') ||
			  (*s >= '0' && *s <= '9') || *s == '_' || *s == '.'))
		{
			complex = true;
		}
	}

	FUNC3(buf, "\\connect ");
	if (complex)
	{
		PQExpBufferData connstr;

		FUNC7(&connstr);
		FUNC3(&connstr, "dbname=");
		FUNC1(&connstr, dbname);

		FUNC3(buf, "-reuse-previous=on ");

		/*
		 * As long as the name does not contain a newline, SQL identifier
		 * quoting satisfies the psql meta-command parser.  Prefer not to
		 * involve psql-interpreted single quotes, which behaved differently
		 * before PostgreSQL 9.2.
		 */
		FUNC3(buf, FUNC5(connstr.data));

		FUNC8(&connstr);
	}
	else
		FUNC3(buf, FUNC5(dbname));
	FUNC2(buf, '\n');
}