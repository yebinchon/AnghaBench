#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* label; } ;
typedef  TYPE_1__ basebackup_options ;
typedef  int /*<<< orphan*/  activitymsg ;
struct TYPE_7__ {int /*<<< orphan*/  options; } ;
typedef  TYPE_2__ BaseBackupCmd ;

/* Variables and functions */
 int /*<<< orphan*/  WALSNDSTATE_BACKUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 scalar_t__ update_process_title ; 

void
FUNC5(BaseBackupCmd *cmd)
{
	basebackup_options opt;

	FUNC1(cmd->options, &opt);

	FUNC0(WALSNDSTATE_BACKUP);

	if (update_process_title)
	{
		char		activitymsg[50];

		FUNC4(activitymsg, sizeof(activitymsg), "sending backup \"%s\"",
				 opt.label);
		FUNC3(activitymsg, false);
	}

	FUNC2(&opt);
}