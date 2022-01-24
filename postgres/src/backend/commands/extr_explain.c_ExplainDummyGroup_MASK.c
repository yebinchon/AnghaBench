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
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  X_CLOSE_IMMEDIATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC7(const char *objtype, const char *labelname, ExplainState *es)
{
	switch (es->format)
	{
		case EXPLAIN_FORMAT_TEXT:
			/* nothing to do */
			break;

		case EXPLAIN_FORMAT_XML:
			FUNC1(objtype, X_CLOSE_IMMEDIATE, es);
			break;

		case EXPLAIN_FORMAT_JSON:
			FUNC0(es);
			FUNC3(es->str, 2 * es->indent);
			if (labelname)
			{
				FUNC5(es->str, labelname);
				FUNC4(es->str, ": ");
			}
			FUNC5(es->str, objtype);
			break;

		case EXPLAIN_FORMAT_YAML:
			FUNC2(es);
			if (labelname)
			{
				FUNC6(es->str, labelname);
				FUNC4(es->str, ": ");
			}
			else
			{
				FUNC4(es->str, "- ");
			}
			FUNC6(es->str, objtype);
			break;
	}
}