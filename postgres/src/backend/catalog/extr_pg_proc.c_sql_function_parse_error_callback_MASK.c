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
struct TYPE_2__ {int /*<<< orphan*/  proname; int /*<<< orphan*/  prosrc; } ;
typedef  TYPE_1__ parse_error_callback_arg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	parse_error_callback_arg *callback_arg = (parse_error_callback_arg *) arg;

	/* See if it's a syntax error; if so, transpose to CREATE FUNCTION */
	if (!FUNC1(callback_arg->prosrc))
	{
		/* If it's not a syntax error, push info onto context stack */
		FUNC0("SQL function \"%s\"", callback_arg->proname);
	}
}