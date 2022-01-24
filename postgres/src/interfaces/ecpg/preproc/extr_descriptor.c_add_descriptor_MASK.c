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
struct descriptor {char* name; char* connection; struct descriptor* next; } ;

/* Variables and functions */
 struct descriptor* descriptors ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

void
FUNC3(char *name, char *connection)
{
	struct descriptor *new;

	if (name[0] != '"')
		return;

	new = (struct descriptor *) FUNC0(sizeof(struct descriptor));

	new->next = descriptors;
	new->name = FUNC0(FUNC2(name) + 1);
	FUNC1(new->name, name);
	if (connection)
	{
		new->connection = FUNC0(FUNC2(connection) + 1);
		FUNC1(new->connection, connection);
	}
	else
		new->connection = connection;
	descriptors = new;
}