#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  isScalar; } ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  scalar_t__ JsonbIteratorToken ;
typedef  TYPE_1__ JsonbIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__**,int /*<<< orphan*/ *,int) ; 
 scalar_t__ WJB_BEGIN_ARRAY ; 
 scalar_t__ WJB_BEGIN_OBJECT ; 
 scalar_t__ WJB_DONE ; 
 scalar_t__ WJB_ELEM ; 
 scalar_t__ WJB_END_ARRAY ; 
 scalar_t__ WJB_END_OBJECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonbValue *
FUNC6(JsonbIterator **it1, JsonbIterator **it2,
			   JsonbParseState **state)
{
	JsonbValue	v1,
				v2,
			   *res = NULL;
	JsonbIteratorToken r1,
				r2,
				rk1,
				rk2;

	r1 = rk1 = FUNC1(it1, &v1, false);
	r2 = rk2 = FUNC1(it2, &v2, false);

	/*
	 * Both elements are objects.
	 */
	if (rk1 == WJB_BEGIN_OBJECT && rk2 == WJB_BEGIN_OBJECT)
	{
		/*
		 * Append the all tokens from v1 to res, except last WJB_END_OBJECT
		 * (because res will not be finished yet).
		 */
		FUNC5(state, r1, NULL);
		while ((r1 = FUNC1(it1, &v1, true)) != WJB_END_OBJECT)
			FUNC5(state, r1, &v1);

		/*
		 * Append the all tokens from v2 to res, include last WJB_END_OBJECT
		 * (the concatenation will be completed).
		 */
		while ((r2 = FUNC1(it2, &v2, true)) != WJB_DONE)
			res = FUNC5(state, r2, r2 != WJB_END_OBJECT ? &v2 : NULL);
	}

	/*
	 * Both elements are arrays (either can be scalar).
	 */
	else if (rk1 == WJB_BEGIN_ARRAY && rk2 == WJB_BEGIN_ARRAY)
	{
		FUNC5(state, r1, NULL);

		while ((r1 = FUNC1(it1, &v1, true)) != WJB_END_ARRAY)
		{
			FUNC0(r1 == WJB_ELEM);
			FUNC5(state, r1, &v1);
		}

		while ((r2 = FUNC1(it2, &v2, true)) != WJB_END_ARRAY)
		{
			FUNC0(r2 == WJB_ELEM);
			FUNC5(state, WJB_ELEM, &v2);
		}

		res = FUNC5(state, WJB_END_ARRAY, NULL /* signal to sort */ );
	}
	/* have we got array || object or object || array? */
	else if (((rk1 == WJB_BEGIN_ARRAY && !(*it1)->isScalar) && rk2 == WJB_BEGIN_OBJECT) ||
			 (rk1 == WJB_BEGIN_OBJECT && (rk2 == WJB_BEGIN_ARRAY && !(*it2)->isScalar)))
	{

		JsonbIterator **it_array = rk1 == WJB_BEGIN_ARRAY ? it1 : it2;
		JsonbIterator **it_object = rk1 == WJB_BEGIN_OBJECT ? it1 : it2;

		bool		prepend = (rk1 == WJB_BEGIN_OBJECT);

		FUNC5(state, WJB_BEGIN_ARRAY, NULL);

		if (prepend)
		{
			FUNC5(state, WJB_BEGIN_OBJECT, NULL);
			while ((r1 = FUNC1(it_object, &v1, true)) != WJB_DONE)
				FUNC5(state, r1, r1 != WJB_END_OBJECT ? &v1 : NULL);

			while ((r2 = FUNC1(it_array, &v2, true)) != WJB_DONE)
				res = FUNC5(state, r2, r2 != WJB_END_ARRAY ? &v2 : NULL);
		}
		else
		{
			while ((r1 = FUNC1(it_array, &v1, true)) != WJB_END_ARRAY)
				FUNC5(state, r1, &v1);

			FUNC5(state, WJB_BEGIN_OBJECT, NULL);
			while ((r2 = FUNC1(it_object, &v2, true)) != WJB_DONE)
				FUNC5(state, r2, r2 != WJB_END_OBJECT ? &v2 : NULL);

			res = FUNC5(state, WJB_END_ARRAY, NULL);
		}
	}
	else
	{
		/*
		 * This must be scalar || object or object || scalar, as that's all
		 * that's left. Both of these make no sense, so error out.
		 */
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC4("invalid concatenation of jsonb objects")));
	}

	return res;
}