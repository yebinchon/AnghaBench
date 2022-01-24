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
struct descriptor {struct descriptor* name; struct descriptor* connection; struct descriptor* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET_WARNING ; 
 int /*<<< orphan*/  PARSE_ERROR ; 
 struct descriptor* descriptors ; 
 int /*<<< orphan*/  FUNC0 (struct descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (char*,struct descriptor*) ; 

void
FUNC3(char *name, char *connection)
{
	struct descriptor *i;
	struct descriptor **lastptr = &descriptors;

	if (name[0] != '"')
		return;

	for (i = descriptors; i; lastptr = &i->next, i = i->next)
	{
		if (FUNC2(name, i->name) == 0)
		{
			if ((!connection && !i->connection)
				|| (connection && i->connection
					&& FUNC2(connection, i->connection) == 0))
			{
				*lastptr = i->next;
				if (i->connection)
					FUNC0(i->connection);
				FUNC0(i->name);
				FUNC0(i);
				return;
			}
		}
	}
	FUNC1(PARSE_ERROR, ET_WARNING, "descriptor \"%s\" does not exist", name);
}