#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ltree_level ;
struct TYPE_10__ {int numlevel; } ;
typedef  TYPE_2__ ltree ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(const ltree *a, const ltree *b)
{
	ltree_level *al = FUNC1(a);
	ltree_level *bl = FUNC1(b);
	int			an = a->numlevel;
	int			bn = b->numlevel;

	while (an > 0 && bn > 0)
	{
		int			res;

		if ((res = FUNC3(al->name, bl->name, FUNC2(al->len, bl->len))) == 0)
		{
			if (al->len != bl->len)
				return (al->len - bl->len) * 10 * (an + 1);
		}
		else
		{
			if (res < 0)
				res = -1;
			else
				res = 1;
			return res * 10 * (an + 1);
		}

		an--;
		bn--;
		al = FUNC0(al);
		bl = FUNC0(bl);
	}

	return (a->numlevel - b->numlevel) * 10 * (an + 1);
}