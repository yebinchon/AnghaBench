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

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(int encoding, char **str)
{
	char	   *pstr;
	char	   *mstr;

	/* convert the string to the database encoding */
	pstr = FUNC5(*str, FUNC7(*str), encoding);
	if (pstr == *str)
		return;					/* no conversion happened */

	/* need it malloc'd not palloc'd */
	mstr = FUNC6(pstr);
	if (mstr == NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_OUT_OF_MEMORY),
				 FUNC2("out of memory")));

	/* replace old string */
	FUNC3(*str);
	*str = mstr;

	FUNC4(pstr);
}