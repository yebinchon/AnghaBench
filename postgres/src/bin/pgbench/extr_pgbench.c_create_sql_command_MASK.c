#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  stats; int /*<<< orphan*/ * expr; int /*<<< orphan*/ * varprefix; int /*<<< orphan*/  argv; scalar_t__ argc; int /*<<< orphan*/  meta; int /*<<< orphan*/  type; int /*<<< orphan*/ * first_line; int /*<<< orphan*/  lines; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  TYPE_2__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  META_NONE ; 
 int /*<<< orphan*/  SQL_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Command *
FUNC6(PQExpBuffer buf, const char *source)
{
	Command    *my_command;
	char	   *p = FUNC5(buf->data);

	if (p == NULL)
		return NULL;

	/* Allocate and initialize Command structure */
	my_command = (Command *) FUNC4(sizeof(Command));
	FUNC1(&my_command->lines);
	FUNC0(&my_command->lines, p);
	my_command->first_line = NULL;	/* this is set later */
	my_command->type = SQL_COMMAND;
	my_command->meta = META_NONE;
	my_command->argc = 0;
	FUNC3(my_command->argv, 0, sizeof(my_command->argv));
	my_command->varprefix = NULL;	/* allocated later, if needed */
	my_command->expr = NULL;
	FUNC2(&my_command->stats);

	return my_command;
}