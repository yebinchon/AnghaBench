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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

__attribute__((used)) static char *
FUNC3(const char *value)
{
	bool		nq;
	const char *ptr;
	StringInfoData buf;

	FUNC1(&buf);

	/* Detect whether we need double quotes for this value */
	nq = (value[0] == '\0');	/* force quotes for empty string */
	for (ptr = value; *ptr; ptr++)
	{
		char		ch = *ptr;

		if (ch == '"' || ch == '\\' ||
			ch == '(' || ch == ')' ||
			ch == '[' || ch == ']' ||
			ch == ',' ||
			FUNC2((unsigned char) ch))
		{
			nq = true;
			break;
		}
	}

	/* And emit the string */
	if (nq)
		FUNC0(&buf, '"');
	for (ptr = value; *ptr; ptr++)
	{
		char		ch = *ptr;

		if (ch == '"' || ch == '\\')
			FUNC0(&buf, ch);
		FUNC0(&buf, ch);
	}
	if (nq)
		FUNC0(&buf, '"');

	return buf.data;
}