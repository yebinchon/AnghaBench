#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmltype ;
typedef  int /*<<< orphan*/  text ;
struct TYPE_7__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_XML_PROCESSING_INSTRUCTION ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*) ; 
 char* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 

xmltype *
FUNC15(const char *target, text *arg, bool arg_is_null, bool *result_is_null)
{
#ifdef USE_LIBXML
	xmltype    *result;
	StringInfoData buf;

	if (pg_strcasecmp(target, "xml") == 0)
		ereport(ERROR,
				(errcode(ERRCODE_SYNTAX_ERROR), /* really */
				 errmsg("invalid XML processing instruction"),
				 errdetail("XML processing instruction target name cannot be \"%s\".", target)));

	/*
	 * Following the SQL standard, the null check comes after the syntax check
	 * above.
	 */
	*result_is_null = arg_is_null;
	if (*result_is_null)
		return NULL;

	initStringInfo(&buf);

	appendStringInfo(&buf, "<?%s", target);

	if (arg != NULL)
	{
		char	   *string;

		string = text_to_cstring(arg);
		if (strstr(string, "?>") != NULL)
			ereport(ERROR,
					(errcode(ERRCODE_INVALID_XML_PROCESSING_INSTRUCTION),
					 errmsg("invalid XML processing instruction"),
					 errdetail("XML processing instruction cannot contain \"?>\".")));

		appendStringInfoChar(&buf, ' ');
		appendStringInfoString(&buf, string + strspn(string, " "));
		pfree(string);
	}
	appendStringInfoString(&buf, "?>");

	result = stringinfo_to_xmltype(&buf);
	pfree(buf.data);
	return result;
#else
	FUNC0();
	return NULL;
#endif
}