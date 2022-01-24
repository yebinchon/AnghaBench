#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_7__ {int /*<<< orphan*/  rawScalar; } ;
struct TYPE_9__ {TYPE_2__ string; TYPE_1__ array; } ;
struct TYPE_10__ {TYPE_3__ val; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  TYPE_4__ JsonbValue ;
typedef  int JsonbIteratorToken ;
typedef  int /*<<< orphan*/  JsonbIterator ;
typedef  int /*<<< orphan*/  JsonbContainer ;
typedef  int /*<<< orphan*/  HV ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,TYPE_4__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*) ; 
#define  WJB_BEGIN_ARRAY 129 
#define  WJB_BEGIN_OBJECT 128 
 int WJB_DONE ; 
 int WJB_ELEM ; 
 int WJB_END_ARRAY ; 
 int WJB_KEY ; 
 int WJB_VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static SV  *
FUNC9(JsonbContainer *jsonb)
{
	dTHX;
	JsonbValue	v;
	JsonbIterator *it;
	JsonbIteratorToken r;

	it = FUNC0(jsonb);
	r = FUNC1(&it, &v, true);

	switch (r)
	{
		case WJB_BEGIN_ARRAY:
			if (v.val.array.rawScalar)
			{
				JsonbValue	tmp;

				if ((r = FUNC1(&it, &v, true)) != WJB_ELEM ||
					(r = FUNC1(&it, &tmp, true)) != WJB_END_ARRAY ||
					(r = FUNC1(&it, &tmp, true)) != WJB_DONE)
					FUNC4(ERROR, "unexpected jsonb token: %d", r);

				return FUNC2(&v);
			}
			else
			{
				AV		   *av = FUNC6();

				while ((r = FUNC1(&it, &v, true)) != WJB_DONE)
				{
					if (r == WJB_ELEM)
						FUNC3(av, FUNC2(&v));
				}

				return FUNC8((SV *) av);
			}

		case WJB_BEGIN_OBJECT:
			{
				HV		   *hv = FUNC7();

				while ((r = FUNC1(&it, &v, true)) != WJB_DONE)
				{
					if (r == WJB_KEY)
					{
						/* json key in v, json value in val */
						JsonbValue	val;

						if (FUNC1(&it, &val, true) == WJB_VALUE)
						{
							SV		   *value = FUNC2(&val);

							(void) FUNC5(hv,
											v.val.string.val, v.val.string.len,
											value, 0);
						}
					}
				}

				return FUNC8((SV *) hv);
			}

		default:
			FUNC4(ERROR, "unexpected jsonb token: %d", r);
			return NULL;
	}
}