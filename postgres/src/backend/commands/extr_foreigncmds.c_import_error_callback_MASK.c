#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tablename; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ import_error_callback_arg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	import_error_callback_arg *callback_arg = (import_error_callback_arg *) arg;
	int			syntaxerrposition;

	/* If it's a syntax error, convert to internal syntax error report */
	syntaxerrposition = FUNC2();
	if (syntaxerrposition > 0)
	{
		FUNC1(0);
		FUNC3(syntaxerrposition);
		FUNC4(callback_arg->cmd);
	}

	if (callback_arg->tablename)
		FUNC0("importing foreign table \"%s\"",
				   callback_arg->tablename);
}