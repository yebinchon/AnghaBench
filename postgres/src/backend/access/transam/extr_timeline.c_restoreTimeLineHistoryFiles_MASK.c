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
typedef  int TimeLineID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MAXFNAMELEN ; 
 int MAXPGPATH ; 
 scalar_t__ FUNC1 (char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void
FUNC3(TimeLineID begin, TimeLineID end)
{
	char		path[MAXPGPATH];
	char		histfname[MAXFNAMELEN];
	TimeLineID	tli;

	for (tli = begin; tli < end; tli++)
	{
		if (tli == 1)
			continue;

		FUNC2(histfname, tli);
		if (FUNC1(path, histfname, "RECOVERYHISTORY", 0, false))
			FUNC0(path, histfname);
	}
}