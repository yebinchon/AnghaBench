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
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static char *
FUNC2(const char *str)
{
	const char *cp;
	StringInfoData buf;

	FUNC1(&buf);

	for (cp = str; *cp; cp++)
	{
		if (*cp == '\\' || *cp == '\'')
			FUNC0(&buf, '\\');
		FUNC0(&buf, *cp);
	}

	return buf.data;
}