#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tip; int /*<<< orphan*/  alias; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ phpdbg_command_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(phpdbg_command_t const * const cmd)
{
	char *summary;
	FUNC2(&summary, 0, "Command: **%s**  Alias: **%c**  **%s**\n", cmd->name, cmd->alias, cmd->tip);
	FUNC1(summary);
	FUNC0(summary);
}