#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_11__ {int /*<<< orphan*/  val; int /*<<< orphan*/  len; } ;
struct TYPE_12__ {TYPE_1__ string; void* numeric; } ;
struct TYPE_13__ {TYPE_2__ val; void* type; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  int /*<<< orphan*/  IV ;
typedef  int /*<<< orphan*/  HV ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  SVt_PVAV 129 
#define  SVt_PVHV 128 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 double FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WJB_ELEM ; 
 int /*<<< orphan*/  WJB_VALUE ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  float8_numeric ; 
 int /*<<< orphan*/  int8_numeric ; 
 int /*<<< orphan*/  FUNC24 (double) ; 
 int /*<<< orphan*/  FUNC25 (double) ; 
 void* jbvNull ; 
 void* jbvNumeric ; 
 void* jbvString ; 
 TYPE_3__* FUNC26 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  numeric_in ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 TYPE_3__* FUNC28 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonbValue *
FUNC31(SV *in, JsonbParseState **jsonb_state, bool is_elem)
{
	dTHX;
	JsonbValue	out;			/* result */

	/* Dereference references recursively. */
	while (FUNC17(in))
		in = FUNC18(in);

	switch (FUNC19(in))
	{
		case SVt_PVAV:
			return FUNC0((AV *) in, jsonb_state);

		case SVt_PVHV:
			return FUNC6((HV *) in, jsonb_state);

		default:
			if (!FUNC14(in))
			{
				out.type = jbvNull;
			}
			else if (FUNC20(in))
			{
				/*
				 * If UV is >=64 bits, we have no better way to make this
				 * happen than converting to text and back.  Given the low
				 * usage of UV in Perl code, it's not clear it's worth working
				 * hard to provide alternate code paths.
				 */
				const char *strval = FUNC16(in);

				out.type = jbvNumeric;
				out.val.numeric =
					FUNC2(FUNC4(numeric_in,
														FUNC1(strval),
														FUNC9(InvalidOid),
														FUNC7(-1)));
			}
			else if (FUNC10(in))
			{
				IV			ival = FUNC11(in);

				out.type = jbvNumeric;
				out.val.numeric =
					FUNC2(FUNC3(int8_numeric,
														FUNC8((int64) ival)));
			}
			else if (FUNC12(in))
			{
				double		nval = FUNC13(in);

				/*
				 * jsonb doesn't allow infinity or NaN (per JSON
				 * specification), but the numeric type that is used for the
				 * storage accepts NaN, so we have to prevent it here
				 * explicitly.  We don't really have to check for isinf()
				 * here, as numeric doesn't allow it and it would be caught
				 * later, but it makes for a nicer error message.
				 */
				if (FUNC24(nval))
					FUNC21(ERROR,
							(FUNC22(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
							 (FUNC23("cannot convert infinity to jsonb"))));
				if (FUNC25(nval))
					FUNC21(ERROR,
							(FUNC22(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
							 (FUNC23("cannot convert NaN to jsonb"))));

				out.type = jbvNumeric;
				out.val.numeric =
					FUNC2(FUNC3(float8_numeric,
														FUNC5(nval)));
			}
			else if (FUNC15(in))
			{
				out.type = jbvString;
				out.val.string.val = FUNC30(in);
				out.val.string.len = FUNC29(out.val.string.val);
			}
			else
			{
				/*
				 * XXX It might be nice if we could include the Perl type in
				 * the error message.
				 */
				FUNC21(ERROR,
						(FUNC22(ERRCODE_FEATURE_NOT_SUPPORTED),
						 (FUNC23("cannot transform this Perl type to jsonb"))));
				return NULL;
			}
	}

	/* Push result into 'jsonb_state' unless it is a raw scalar. */
	return *jsonb_state
		? FUNC28(jsonb_state, is_elem ? WJB_ELEM : WJB_VALUE, &out)
		: FUNC26(FUNC27(sizeof(JsonbValue)), &out, sizeof(JsonbValue));
}