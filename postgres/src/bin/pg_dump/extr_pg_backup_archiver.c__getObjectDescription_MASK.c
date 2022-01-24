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
struct TYPE_3__ {char* desc; char* namespace; char* tag; scalar_t__ dropStmt; } ;
typedef  TYPE_1__ TocEntry ;
typedef  int /*<<< orphan*/  PQExpBuffer ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(PQExpBuffer buf, TocEntry *te, ArchiveHandle *AH)
{
	const char *type = te->desc;

	/* Use ALTER TABLE for views and sequences */
	if (FUNC6(type, "VIEW") == 0 || FUNC6(type, "SEQUENCE") == 0 ||
		FUNC6(type, "MATERIALIZED VIEW") == 0)
		type = "TABLE";

	/* objects that don't require special decoration */
	if (FUNC6(type, "COLLATION") == 0 ||
		FUNC6(type, "CONVERSION") == 0 ||
		FUNC6(type, "DOMAIN") == 0 ||
		FUNC6(type, "TABLE") == 0 ||
		FUNC6(type, "TYPE") == 0 ||
		FUNC6(type, "FOREIGN TABLE") == 0 ||
		FUNC6(type, "TEXT SEARCH DICTIONARY") == 0 ||
		FUNC6(type, "TEXT SEARCH CONFIGURATION") == 0 ||
		FUNC6(type, "STATISTICS") == 0 ||
	/* non-schema-specified objects */
		FUNC6(type, "DATABASE") == 0 ||
		FUNC6(type, "PROCEDURAL LANGUAGE") == 0 ||
		FUNC6(type, "SCHEMA") == 0 ||
		FUNC6(type, "EVENT TRIGGER") == 0 ||
		FUNC6(type, "FOREIGN DATA WRAPPER") == 0 ||
		FUNC6(type, "SERVER") == 0 ||
		FUNC6(type, "PUBLICATION") == 0 ||
		FUNC6(type, "SUBSCRIPTION") == 0 ||
		FUNC6(type, "USER MAPPING") == 0)
	{
		FUNC0(buf, "%s ", type);
		if (te->namespace && *te->namespace)
			FUNC0(buf, "%s.", FUNC2(te->namespace));
		FUNC1(buf, FUNC2(te->tag));
		return;
	}

	/* BLOBs just have a name, but it's numeric so must not use fmtId */
	if (FUNC6(type, "BLOB") == 0)
	{
		FUNC0(buf, "LARGE OBJECT %s", te->tag);
		return;
	}

	/*
	 * These object types require additional decoration.  Fortunately, the
	 * information needed is exactly what's in the DROP command.
	 */
	if (FUNC6(type, "AGGREGATE") == 0 ||
		FUNC6(type, "FUNCTION") == 0 ||
		FUNC6(type, "OPERATOR") == 0 ||
		FUNC6(type, "OPERATOR CLASS") == 0 ||
		FUNC6(type, "OPERATOR FAMILY") == 0 ||
		FUNC6(type, "PROCEDURE") == 0)
	{
		/* Chop "DROP " off the front and make a modifiable copy */
		char	   *first = FUNC5(te->dropStmt + 5);
		char	   *last;

		/* point to last character in string */
		last = first + FUNC7(first) - 1;

		/* Strip off any ';' or '\n' at the end */
		while (last >= first && (*last == '\n' || *last == ';'))
			last--;
		*(last + 1) = '\0';

		FUNC1(buf, first);

		FUNC3(first);
		return;
	}

	FUNC4("don't know how to set owner for object type \"%s\"",
				   type);
}