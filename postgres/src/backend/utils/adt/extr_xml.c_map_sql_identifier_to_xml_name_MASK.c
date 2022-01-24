#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pg_wchar ;
struct TYPE_6__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 
 scalar_t__ FUNC10 (char const*) ; 

char *
FUNC11(const char *ident, bool fully_escaped,
							   bool escape_period)
{
#ifdef USE_LIBXML
	StringInfoData buf;
	const char *p;

	/*
	 * SQL/XML doesn't make use of this case anywhere, so it's probably a
	 * mistake.
	 */
	Assert(fully_escaped || !escape_period);

	initStringInfo(&buf);

	for (p = ident; *p; p += pg_mblen(p))
	{
		if (*p == ':' && (p == ident || fully_escaped))
			appendStringInfoString(&buf, "_x003A_");
		else if (*p == '_' && *(p + 1) == 'x')
			appendStringInfoString(&buf, "_x005F_");
		else if (fully_escaped && p == ident &&
				 pg_strncasecmp(p, "xml", 3) == 0)
		{
			if (*p == 'x')
				appendStringInfoString(&buf, "_x0078_");
			else
				appendStringInfoString(&buf, "_x0058_");
		}
		else if (escape_period && *p == '.')
			appendStringInfoString(&buf, "_x002E_");
		else
		{
			pg_wchar	u = sqlchar_to_unicode(p);

			if ((p == ident)
				? !is_valid_xml_namefirst(u)
				: !is_valid_xml_namechar(u))
				appendStringInfo(&buf, "_x%04X_", (unsigned int) u);
			else
				appendBinaryStringInfo(&buf, p, pg_mblen(p));
		}
	}

	return buf.data;
#else							/* not USE_LIBXML */
	FUNC1();
	return NULL;
#endif							/* not USE_LIBXML */
}