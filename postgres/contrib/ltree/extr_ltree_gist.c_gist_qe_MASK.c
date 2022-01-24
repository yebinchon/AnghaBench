#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ltree_gist ;
struct TYPE_14__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ lquery_variant ;
struct TYPE_15__ {int numvar; } ;
typedef  TYPE_2__ lquery_level ;
struct TYPE_16__ {int numlevel; } ;
typedef  TYPE_3__ lquery ;
typedef  int /*<<< orphan*/  BITVECP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC9(ltree_gist *key, lquery *query)
{
	lquery_level *curq = FUNC5(query);
	BITVECP		sign = FUNC7(key);
	int			qlen = query->numlevel;

	if (FUNC6(key))
		return true;

	while (qlen > 0)
	{
		if (curq->numvar && FUNC2(curq))
		{
			bool		isexist = false;
			int			vlen = curq->numvar;
			lquery_variant *curv = FUNC3(curq);

			while (vlen > 0)
			{
				if (FUNC0(sign, FUNC1(curv->val)))
				{
					isexist = true;
					break;
				}
				curv = FUNC8(curv);
				vlen--;
			}
			if (!isexist)
				return false;
		}

		curq = FUNC4(curq);
		qlen--;
	}

	return true;
}