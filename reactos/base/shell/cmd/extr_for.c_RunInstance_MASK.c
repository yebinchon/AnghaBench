#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ Type; } ;
struct TYPE_5__ {TYPE_3__* Subcommands; } ;
typedef  TYPE_1__ PARSED_COMMAND ;
typedef  int /*<<< orphan*/  INT ;

/* Variables and functions */
 scalar_t__ C_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  bDisableBatchEcho ; 
 scalar_t__ bEcho ; 
 int /*<<< orphan*/  bIgnoreEcho ; 

__attribute__((used)) static INT FUNC5(PARSED_COMMAND *Cmd)
{
    if (bEcho && !bDisableBatchEcho && Cmd->Subcommands->Type != C_QUIET)
    {
        if (!bIgnoreEcho)
            FUNC0(FUNC4('\n'));
        FUNC3();
        FUNC1(Cmd->Subcommands);
        FUNC0(FUNC4('\n'));
    }
    /* Just run the command (variable expansion is done in DoDelayedExpansion) */
    return FUNC2(Cmd->Subcommands);
}