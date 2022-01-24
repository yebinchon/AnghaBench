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
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  HV ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ SVt_PVAV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static SV  *
FUNC7(SV *sv)
{
	dTHX;

	if (FUNC0(sv) && FUNC1(sv))
	{
		if (FUNC3(FUNC2(sv)) == SVt_PVAV)
			return sv;
		else if (FUNC6(sv, "PostgreSQL::InServer::ARRAY"))
		{
			HV		   *hv = (HV *) FUNC2(sv);
			SV		  **sav = FUNC5(hv, "array");

			if (*sav && FUNC0(*sav) && FUNC1(*sav) &&
				FUNC3(FUNC2(*sav)) == SVt_PVAV)
				return *sav;

			FUNC4(ERROR, "could not get array reference from PostgreSQL::InServer::ARRAY object");
		}
	}
	return NULL;
}