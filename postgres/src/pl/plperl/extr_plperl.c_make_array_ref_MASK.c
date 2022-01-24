#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ fn_oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  proc; scalar_t__ elem_is_rowtype; TYPE_3__ transform_proc; int /*<<< orphan*/ * elements; scalar_t__* nulls; } ;
typedef  TYPE_1__ plperl_array_info ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static SV  *
FUNC9(plperl_array_info *info, int first, int last)
{
	dTHX;
	int			i;
	AV		   *result = FUNC5();

	for (i = first; i < last; i++)
	{
		if (info->nulls[i])
		{
			/*
			 * We can't use &PL_sv_undef here.  See "AVs, HVs and undefined
			 * values" in perlguts.
			 */
			FUNC3(result, FUNC7(0));
		}
		else
		{
			Datum		itemvalue = info->elements[i];

			if (info->transform_proc.fn_oid)
				FUNC3(result, (SV *) FUNC0(FUNC1(&info->transform_proc, itemvalue)));
			else if (info->elem_is_rowtype)
				/* Handle composite type elements */
				FUNC3(result, FUNC8(itemvalue));
			else
			{
				char	   *val = FUNC2(&info->proc, itemvalue);

				FUNC3(result, FUNC4(val));
			}
		}
	}
	return FUNC6((SV *) result);
}