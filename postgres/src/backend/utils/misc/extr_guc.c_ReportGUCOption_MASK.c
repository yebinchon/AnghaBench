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
struct config_generic {int flags; char* name; } ;
typedef  int /*<<< orphan*/  StringInfoData ;

/* Variables and functions */
 int GUC_REPORT ; 
 char* FUNC0 (struct config_generic*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ reporting_enabled ; 

__attribute__((used)) static void
FUNC5(struct config_generic *record)
{
	if (reporting_enabled && (record->flags & GUC_REPORT))
	{
		char	   *val = FUNC0(record, false);
		StringInfoData msgbuf;

		FUNC2(&msgbuf, 'S');
		FUNC4(&msgbuf, record->name);
		FUNC4(&msgbuf, val);
		FUNC3(&msgbuf);

		FUNC1(val);
	}
}