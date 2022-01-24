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
typedef  int /*<<< orphan*/  timestamp ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  fsec_t ;
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct tm*,char*,int*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(timestamp * ts, char *output, int str_len, const char *fmtstr)
{
	struct tm	tm;
	fsec_t		fsec;
	date		dDate;
	int			dow;

	dDate = FUNC1(*ts);
	dow = FUNC0(dDate);
	FUNC3(*ts, NULL, &tm, &fsec, NULL);

	return FUNC2(ts, dDate, dow, &tm, output, &str_len, fmtstr);
}