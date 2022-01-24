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
struct TYPE_4__ {int argc; struct TYPE_4__* varprefix; struct TYPE_4__** argv; struct TYPE_4__* first_line; int /*<<< orphan*/  lines; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(Command *command)
{
	FUNC1(&command->lines);
	if (command->first_line)
		FUNC0(command->first_line);
	for (int i = 0; i < command->argc; i++)
		FUNC0(command->argv[i]);
	if (command->varprefix)
		FUNC0(command->varprefix);

	/*
	 * It should also free expr recursively, but this is currently not needed
	 * as only gset commands (which do not have an expression) are freed.
	 */
	FUNC0(command);
}