#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ltree_level ;
struct TYPE_14__ {int numlevel; } ;
typedef  TYPE_2__ ltree ;
struct TYPE_15__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ lquery_variant ;
typedef  int /*<<< orphan*/  lquery_level ;
struct TYPE_16__ {int firstgood; } ;
typedef  TYPE_4__ lquery ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(ltree *t, lquery *q)
{
	ltree_level *al = FUNC4(t);
	lquery_level *ql = FUNC3(q);
	lquery_variant *bl;
	int			an = t->numlevel;
	int			bn = q->firstgood;
	int			res = 0;

	while (an > 0 && bn > 0)
	{
		bl = FUNC1(ql);
		if ((res = FUNC6(al->name, bl->name, FUNC5(al->len, bl->len))) == 0)
		{
			if (al->len != bl->len)
				return al->len - bl->len;
		}
		else
			return res;
		an--;
		bn--;
		al = FUNC0(al);
		ql = FUNC2(ql);
	}

	return FUNC5(t->numlevel, q->firstgood) - q->firstgood;
}