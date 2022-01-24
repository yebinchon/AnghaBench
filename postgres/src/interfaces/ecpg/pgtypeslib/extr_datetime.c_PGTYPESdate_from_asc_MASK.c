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
struct tm {int tm_year; int tm_mon; int tm_mday; } ;
typedef  int /*<<< orphan*/  fsec_t ;
typedef  scalar_t__ date ;

/* Variables and functions */
#define  DTK_DATE 129 
#define  DTK_EPOCH 128 
 scalar_t__ FUNC0 (char**,int*,int,int*,struct tm*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 
 scalar_t__ INT_MIN ; 
 int MAXDATEFIELDS ; 
 int MAXDATELEN ; 
 scalar_t__ PGTYPES_DATE_BAD_DATE ; 
 scalar_t__ FUNC2 (char*,char*,char**,int*,int*,char**) ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 scalar_t__ errno ; 
 int FUNC4 (char*) ; 

date
FUNC5(char *str, char **endptr)
{
	date		dDate;
	fsec_t		fsec;
	struct tm	tt,
			   *tm = &tt;
	int			dtype;
	int			nf;
	char	   *field[MAXDATEFIELDS];
	int			ftype[MAXDATEFIELDS];
	char		lowstr[MAXDATELEN + MAXDATEFIELDS];
	char	   *realptr;
	char	  **ptr = (endptr != NULL) ? endptr : &realptr;

	bool		EuroDates = false;

	errno = 0;
	if (FUNC4(str) > MAXDATELEN)
	{
		errno = PGTYPES_DATE_BAD_DATE;
		return INT_MIN;
	}

	if (FUNC2(str, lowstr, field, ftype, &nf, ptr) != 0 ||
		FUNC0(field, ftype, nf, &dtype, tm, &fsec, EuroDates) != 0)
	{
		errno = PGTYPES_DATE_BAD_DATE;
		return INT_MIN;
	}

	switch (dtype)
	{
		case DTK_DATE:
			break;

		case DTK_EPOCH:
			if (FUNC1(tm) < 0)
			{
				errno = PGTYPES_DATE_BAD_DATE;
				return INT_MIN;
			}
			break;

		default:
			errno = PGTYPES_DATE_BAD_DATE;
			return INT_MIN;
	}

	dDate = (FUNC3(tm->tm_year, tm->tm_mon, tm->tm_mday) - FUNC3(2000, 1, 1));

	return dDate;
}