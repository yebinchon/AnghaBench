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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void
FUNC3(StringInfo buf, const char *str)
{
	const char *p;

	FUNC1(buf, '"');
	for (p = str; *p; p++)
	{
		switch (*p)
		{
			case '\b':
				FUNC2(buf, "\\b");
				break;
			case '\f':
				FUNC2(buf, "\\f");
				break;
			case '\n':
				FUNC2(buf, "\\n");
				break;
			case '\r':
				FUNC2(buf, "\\r");
				break;
			case '\t':
				FUNC2(buf, "\\t");
				break;
			case '"':
				FUNC2(buf, "\\\"");
				break;
			case '\\':
				FUNC2(buf, "\\\\");
				break;
			default:
				if ((unsigned char) *p < ' ')
					FUNC0(buf, "\\u%04x", (int) *p);
				else
					FUNC1(buf, *p);
				break;
		}
	}
	FUNC1(buf, '"');
}