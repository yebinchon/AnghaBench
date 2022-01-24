#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* str; struct TYPE_4__* next; } ;
typedef  TYPE_1__ _stringlist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ encoding ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* loadextension ; 
 TYPE_1__* loadlanguage ; 
 scalar_t__ nolocale ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC3(const char *dbname)
{
	_stringlist *sl;

	/*
	 * We use template0 so that any installation-local cruft in template1 will
	 * not mess up the tests.
	 */
	FUNC1(FUNC0("creating database \"%s\""), dbname);
	if (encoding)
		FUNC2("postgres", "CREATE DATABASE \"%s\" TEMPLATE=template0 ENCODING='%s'%s", dbname, encoding,
					 (nolocale) ? " LC_COLLATE='C' LC_CTYPE='C'" : "");
	else
		FUNC2("postgres", "CREATE DATABASE \"%s\" TEMPLATE=template0%s", dbname,
					 (nolocale) ? " LC_COLLATE='C' LC_CTYPE='C'" : "");
	FUNC2(dbname,
				 "ALTER DATABASE \"%s\" SET lc_messages TO 'C';"
				 "ALTER DATABASE \"%s\" SET lc_monetary TO 'C';"
				 "ALTER DATABASE \"%s\" SET lc_numeric TO 'C';"
				 "ALTER DATABASE \"%s\" SET lc_time TO 'C';"
				 "ALTER DATABASE \"%s\" SET bytea_output TO 'hex';"
				 "ALTER DATABASE \"%s\" SET timezone_abbreviations TO 'Default';",
				 dbname, dbname, dbname, dbname, dbname, dbname);

	/*
	 * Install any requested procedural languages.  We use CREATE OR REPLACE
	 * so that this will work whether or not the language is preinstalled.
	 */
	for (sl = loadlanguage; sl != NULL; sl = sl->next)
	{
		FUNC1(FUNC0("installing %s"), sl->str);
		FUNC2(dbname, "CREATE OR REPLACE LANGUAGE \"%s\"", sl->str);
	}

	/*
	 * Install any requested extensions.  We use CREATE IF NOT EXISTS so that
	 * this will work whether or not the extension is preinstalled.
	 */
	for (sl = loadextension; sl != NULL; sl = sl->next)
	{
		FUNC1(FUNC0("installing %s"), sl->str);
		FUNC2(dbname, "CREATE EXTENSION IF NOT EXISTS \"%s\"", sl->str);
	}
}