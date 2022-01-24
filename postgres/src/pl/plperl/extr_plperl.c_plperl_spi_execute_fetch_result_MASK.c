#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  UV ;
struct TYPE_4__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ * vals; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  TYPE_1__ SPITupleTable ;
typedef  int /*<<< orphan*/  NV ;
typedef  int /*<<< orphan*/  HV ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 scalar_t__ AV_SIZE_MAX ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ UV_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HV  *
FUNC16(SPITupleTable *tuptable, uint64 processed,
								int status)
{
	dTHX;
	HV		   *result;

	FUNC4();

	result = FUNC11();

	FUNC9(result, "status",
					FUNC5(FUNC1(status)));
	FUNC9(result, "processed",
					(processed > (uint64) UV_MAX) ?
					FUNC13((NV) processed) :
					FUNC14((UV) processed));

	if (status > 0 && tuptable)
	{
		AV		   *rows;
		SV		   *row;
		uint64		i;

		/* Prevent overflow in call to av_extend() */
		if (processed > (uint64) AV_SIZE_MAX)
			FUNC6(ERROR,
					(FUNC7(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC8("query result has too many rows to fit in a Perl array")));

		rows = FUNC10();
		FUNC2(rows, processed);
		for (i = 0; i < processed; i++)
		{
			row = FUNC15(tuptable->vals[i], tuptable->tupdesc, true);
			FUNC3(rows, row);
		}
		FUNC9(result, "rows",
						FUNC12((SV *) rows));
	}

	FUNC0(tuptable);

	return result;
}