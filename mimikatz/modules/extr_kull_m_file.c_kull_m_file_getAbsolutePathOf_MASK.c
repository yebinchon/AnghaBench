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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 

BOOL FUNC6(PCWCHAR thisData, wchar_t ** reponse)
{
	BOOL reussite = FALSE;
	wchar_t *monRep;
	*reponse = (wchar_t *) FUNC0(LPTR, MAX_PATH * sizeof(wchar_t));

	if(FUNC4(thisData))
	{
		if(FUNC5(&monRep))
		{
			reussite = (FUNC3(*reponse , monRep, thisData) != NULL);
			FUNC1(monRep);
		}
	}
	else reussite = FUNC2(*reponse, thisData);

	if(!reussite)
		FUNC1(*reponse);

	return reussite;
}