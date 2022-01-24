#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

char *
FUNC3(const char *str)
{
	StringInfoData buf;
	const char *p;

	FUNC2(&buf);
	for (p = str; *p; p++)
	{
		switch (*p)
		{
			case '&':
				FUNC1(&buf, "&amp;");
				break;
			case '<':
				FUNC1(&buf, "&lt;");
				break;
			case '>':
				FUNC1(&buf, "&gt;");
				break;
			case '\r':
				FUNC1(&buf, "&#x0d;");
				break;
			default:
				FUNC0(&buf, *p);
				break;
		}
	}
	return buf.data;
}