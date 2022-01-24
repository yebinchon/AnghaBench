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
typedef  int /*<<< orphan*/  fsec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DTERR_BAD_FORMAT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 double FUNC2 (char*,char**) ; 

__attribute__((used)) static int
FUNC3(char *cp, fsec_t *fsec)
{
	double		frac;

	/* Caller should always pass the start of the fraction part */
	FUNC0(*cp == '.');
	errno = 0;
	frac = FUNC2(cp, &cp);
	/* check for parse failure */
	if (*cp != '\0' || errno != 0)
		return DTERR_BAD_FORMAT;
	*fsec = FUNC1(frac * 1000000);
	return 0;
}