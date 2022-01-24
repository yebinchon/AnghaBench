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
struct TYPE_6__ {int format; int indent; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ ExplainState ;

/* Variables and functions */
#define  EXPLAIN_FORMAT_JSON 131 
#define  EXPLAIN_FORMAT_TEXT 130 
#define  EXPLAIN_FORMAT_XML 129 
#define  EXPLAIN_FORMAT_YAML 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int X_CLOSING ; 
 int X_NOWHITESPACE ; 
 int X_OPENING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(const char *qlabel, const char *unit, const char *value,
				bool numeric, ExplainState *es)
{
	switch (es->format)
	{
		case EXPLAIN_FORMAT_TEXT:
			FUNC5(es->str, es->indent * 2);
			if (unit)
				FUNC3(es->str, "%s: %s %s\n", qlabel, value, unit);
			else
				FUNC3(es->str, "%s: %s\n", qlabel, value);
			break;

		case EXPLAIN_FORMAT_XML:
			{
				char	   *str;

				FUNC5(es->str, es->indent * 2);
				FUNC1(qlabel, X_OPENING | X_NOWHITESPACE, es);
				str = FUNC8(value);
				FUNC6(es->str, str);
				FUNC10(str);
				FUNC1(qlabel, X_CLOSING | X_NOWHITESPACE, es);
				FUNC4(es->str, '\n');
			}
			break;

		case EXPLAIN_FORMAT_JSON:
			FUNC0(es);
			FUNC5(es->str, es->indent * 2);
			FUNC7(es->str, qlabel);
			FUNC6(es->str, ": ");
			if (numeric)
				FUNC6(es->str, value);
			else
				FUNC7(es->str, value);
			break;

		case EXPLAIN_FORMAT_YAML:
			FUNC2(es);
			FUNC3(es->str, "%s: ", qlabel);
			if (numeric)
				FUNC6(es->str, value);
			else
				FUNC9(es->str, value);
			break;
	}
}