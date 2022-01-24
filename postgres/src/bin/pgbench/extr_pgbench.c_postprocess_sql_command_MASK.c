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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  argc; TYPE_1__ lines; int /*<<< orphan*/ * argv; int /*<<< orphan*/  first_line; } ;
typedef  TYPE_2__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  QUERY_EXTENDED 130 
#define  QUERY_PREPARED 129 
#define  QUERY_SIMPLE 128 
 scalar_t__ SQL_COMMAND ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int querymode ; 
 size_t FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(Command *my_command)
{
	char		buffer[128];

	FUNC0(my_command->type == SQL_COMMAND);

	/* Save the first line for error display. */
	FUNC5(buffer, my_command->lines.data, sizeof(buffer));
	buffer[FUNC4(buffer, "\n\r")] = '\0';
	my_command->first_line = FUNC3(buffer);

	/* parse query if necessary */
	switch (querymode)
	{
		case QUERY_SIMPLE:
			my_command->argv[0] = my_command->lines.data;
			my_command->argc++;
			break;
		case QUERY_EXTENDED:
		case QUERY_PREPARED:
			if (!FUNC2(my_command))
				FUNC1(1);
			break;
		default:
			FUNC1(1);
	}
}