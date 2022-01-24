#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct TYPE_12__ {scalar_t__ fn_extra; } ;
struct TYPE_11__ {TYPE_4__* flinfo; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int) ; 
 scalar_t__ FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static text *
FUNC16(const char *sepstr, int argidx,
				FunctionCallInfo fcinfo)
{
	text	   *result;
	StringInfoData str;
	FmgrInfo   *foutcache;
	bool		first_arg = true;
	int			i;

	/*
	 * concat(VARIADIC some-array) is essentially equivalent to
	 * array_to_text(), ie concat the array elements with the given separator.
	 * So we just pass the case off to that code.
	 */
	if (FUNC13(fcinfo->flinfo))
	{
		ArrayType  *arr;

		/* Should have just the one argument */
		FUNC0(argidx == FUNC6() - 1);

		/* concat(VARIADIC NULL) is defined as NULL */
		if (FUNC3(argidx))
			return NULL;

		/*
		 * Non-null argument had better be an array.  We assume that any call
		 * context that could let get_fn_expr_variadic return true will have
		 * checked that a VARIADIC-labeled parameter actually is an array.  So
		 * it should be okay to just Assert that it's an array rather than
		 * doing a full-fledged error check.
		 */
		FUNC0(FUNC1(FUNC11(FUNC12(fcinfo->flinfo, argidx))));

		/* OK, safe to fetch the array value */
		arr = FUNC4(argidx);

		/*
		 * And serialize the array.  We tell array_to_text to ignore null
		 * elements, which matches the behavior of the loop below.
		 */
		return FUNC8(fcinfo, arr, sepstr, NULL);
	}

	/* Normal case without explicit VARIADIC marker */
	FUNC14(&str);

	/* Get output function info, building it if first time through */
	foutcache = (FmgrInfo *) fcinfo->flinfo->fn_extra;
	if (foutcache == NULL)
		foutcache = FUNC9(fcinfo, argidx);

	for (i = argidx; i < FUNC6(); i++)
	{
		if (!FUNC3(i))
		{
			Datum		value = FUNC5(i);

			/* add separator if appropriate */
			if (first_arg)
				first_arg = false;
			else
				FUNC7(&str, sepstr);

			/* call the appropriate type output function, append the result */
			FUNC7(&str,
								   FUNC2(&foutcache[i], value));
		}
	}

	result = FUNC10(str.data, str.len);
	FUNC15(str.data);

	return result;
}