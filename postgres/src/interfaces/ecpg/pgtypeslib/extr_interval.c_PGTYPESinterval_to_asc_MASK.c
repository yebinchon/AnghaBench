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
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  interval ;
typedef  int /*<<< orphan*/  fsec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int,char*) ; 
 int INTSTYLE_POSTGRES_VERBOSE ; 
 int /*<<< orphan*/  MAXDATELEN ; 
 int /*<<< orphan*/  PGTYPES_INTVL_BAD_INTERVAL ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct tm*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 

char *
FUNC3(interval * span)
{
	struct tm	tt,
			   *tm = &tt;
	fsec_t		fsec;
	char		buf[MAXDATELEN + 1];
	int			IntervalStyle = INTSTYLE_POSTGRES_VERBOSE;

	if (FUNC1(*span, tm, &fsec) != 0)
	{
		errno = PGTYPES_INTVL_BAD_INTERVAL;
		return NULL;
	}

	FUNC0(tm, fsec, IntervalStyle, buf);

	return FUNC2(buf);
}