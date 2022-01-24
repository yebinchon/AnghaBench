#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int input_count; void* buf; } ;
struct TYPE_5__ {TYPE_2__* ssup_extra; } ;
typedef  TYPE_1__* SortSupport ;
typedef  scalar_t__ Size ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  NumericVar ;
typedef  TYPE_2__ NumericSortSupport ;
typedef  scalar_t__ Numeric ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMERIC_ABBREV_NAN ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ VARATT_SHORT_MAX ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ VARHDRSZ_SHORT ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 

__attribute__((used)) static Datum
FUNC13(Datum original_datum, SortSupport ssup)
{
	NumericSortSupport *nss = ssup->ssup_extra;
	void	   *original_varatt = FUNC3(original_datum);
	Numeric		value;
	Datum		result;

	nss->input_count += 1;

	/*
	 * This is to handle packed datums without needing a palloc/pfree cycle;
	 * we keep and reuse a buffer large enough to handle any short datum.
	 */
	if (FUNC5(original_varatt))
	{
		void	   *buf = nss->buf;
		Size		sz = FUNC8(original_varatt) - VARHDRSZ_SHORT;

		FUNC0(sz <= VARATT_SHORT_MAX - VARHDRSZ_SHORT);

		FUNC4(buf, VARHDRSZ + sz);
		FUNC10(FUNC6(buf), FUNC7(original_varatt), sz);

		value = (Numeric) buf;
	}
	else
		value = (Numeric) original_varatt;

	if (FUNC2(value))
	{
		result = NUMERIC_ABBREV_NAN;
	}
	else
	{
		NumericVar	var;

		FUNC9(value, &var);

		result = FUNC11(&var, nss);
	}

	/* should happen only for external/compressed toasts */
	if ((Pointer) original_varatt != FUNC1(original_datum))
		FUNC12(original_varatt);

	return result;
}