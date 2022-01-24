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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC10(const char *item, const char *type,
			 const char *name, const char *subname, int remoteVersion,
			 PQExpBuffer grantee, PQExpBuffer grantor,
			 PQExpBuffer privs, PQExpBuffer privswgo)
{
	char	   *buf;
	bool		all_with_go = true;
	bool		all_without_go = true;
	char	   *eqpos;
	char	   *slpos;
	char	   *pos;

	buf = FUNC5(item);

	/* user or group name is string up to = */
	eqpos = FUNC3(grantee, buf);
	if (*eqpos != '=')
	{
		FUNC4(buf);
		return false;
	}

	/* grantor should appear after / */
	slpos = FUNC8(eqpos + 1, '/');
	if (slpos)
	{
		*slpos++ = '\0';
		slpos = FUNC3(grantor, slpos);
		if (*slpos != '\0')
		{
			FUNC4(buf);
			return false;
		}
	}
	else
	{
		FUNC4(buf);
		return false;
	}

	/* privilege codes */
#define CONVERT_PRIV(code, keywd) \
do { \
	if ((pos = strchr(eqpos + 1, code))) \
	{ \
		if (*(pos + 1) == '*') \
		{ \
			AddAcl(privswgo, keywd, subname); \
			all_without_go = false; \
		} \
		else \
		{ \
			AddAcl(privs, keywd, subname); \
			all_with_go = false; \
		} \
	} \
	else \
		all_with_go = all_without_go = false; \
} while (0)

	FUNC7(privs);
	FUNC7(privswgo);

	if (FUNC9(type, "TABLE") == 0 || FUNC9(type, "SEQUENCE") == 0 ||
		FUNC9(type, "TABLES") == 0 || FUNC9(type, "SEQUENCES") == 0)
	{
		CONVERT_PRIV('r', "SELECT");

		if (FUNC9(type, "SEQUENCE") == 0 ||
			FUNC9(type, "SEQUENCES") == 0)
			/* sequence only */
			CONVERT_PRIV('U', "USAGE");
		else
		{
			/* table only */
			CONVERT_PRIV('a', "INSERT");
			CONVERT_PRIV('x', "REFERENCES");
			/* rest are not applicable to columns */
			if (subname == NULL)
			{
				CONVERT_PRIV('d', "DELETE");
				CONVERT_PRIV('t', "TRIGGER");
				if (remoteVersion >= 80400)
					CONVERT_PRIV('D', "TRUNCATE");
			}
		}

		/* UPDATE */
		CONVERT_PRIV('w', "UPDATE");
	}
	else if (FUNC9(type, "FUNCTION") == 0 ||
			 FUNC9(type, "FUNCTIONS") == 0)
		CONVERT_PRIV('X', "EXECUTE");
	else if (FUNC9(type, "PROCEDURE") == 0 ||
			 FUNC9(type, "PROCEDURES") == 0)
		CONVERT_PRIV('X', "EXECUTE");
	else if (FUNC9(type, "LANGUAGE") == 0)
		CONVERT_PRIV('U', "USAGE");
	else if (FUNC9(type, "SCHEMA") == 0 ||
			 FUNC9(type, "SCHEMAS") == 0)
	{
		CONVERT_PRIV('C', "CREATE");
		CONVERT_PRIV('U', "USAGE");
	}
	else if (FUNC9(type, "DATABASE") == 0)
	{
		CONVERT_PRIV('C', "CREATE");
		CONVERT_PRIV('c', "CONNECT");
		CONVERT_PRIV('T', "TEMPORARY");
	}
	else if (FUNC9(type, "TABLESPACE") == 0)
		CONVERT_PRIV('C', "CREATE");
	else if (FUNC9(type, "TYPE") == 0 ||
			 FUNC9(type, "TYPES") == 0)
		CONVERT_PRIV('U', "USAGE");
	else if (FUNC9(type, "FOREIGN DATA WRAPPER") == 0)
		CONVERT_PRIV('U', "USAGE");
	else if (FUNC9(type, "FOREIGN SERVER") == 0)
		CONVERT_PRIV('U', "USAGE");
	else if (FUNC9(type, "FOREIGN TABLE") == 0)
		CONVERT_PRIV('r', "SELECT");
	else if (FUNC9(type, "LARGE OBJECT") == 0)
	{
		CONVERT_PRIV('r', "SELECT");
		CONVERT_PRIV('w', "UPDATE");
	}
	else
		FUNC1();

#undef CONVERT_PRIV

	if (all_with_go)
	{
		FUNC7(privs);
		FUNC6(privswgo, "ALL");
		if (subname)
			FUNC2(privswgo, "(%s)", subname);
	}
	else if (all_without_go)
	{
		FUNC7(privswgo);
		FUNC6(privs, "ALL");
		if (subname)
			FUNC2(privs, "(%s)", subname);
	}

	FUNC4(buf);

	return true;
}