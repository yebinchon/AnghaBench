#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  st_progress_param; int /*<<< orphan*/  st_progress_command_target; int /*<<< orphan*/  st_progress_command; } ;
typedef  int /*<<< orphan*/  ProgressCommandType ;
typedef  TYPE_1__ PgBackendStatus ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* MyBEEntry ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  pgstat_track_activities ; 

void
FUNC3(ProgressCommandType cmdtype, Oid relid)
{
	volatile PgBackendStatus *beentry = MyBEEntry;

	if (!beentry || !pgstat_track_activities)
		return;

	FUNC1(beentry);
	beentry->st_progress_command = cmdtype;
	beentry->st_progress_command_target = relid;
	FUNC0(&beentry->st_progress_param, 0, sizeof(beentry->st_progress_param));
	FUNC2(beentry);
}