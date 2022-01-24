#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ltree_level ;
typedef  int /*<<< orphan*/  ltree_gist ;
struct TYPE_9__ {int numlevel; } ;
typedef  TYPE_2__ ltree ;
typedef  int /*<<< orphan*/  BITVECP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_2__*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(ltree_gist *key, ltree *query)
{
	ltree_level *curq = FUNC5(query);
	BITVECP		sign = FUNC4(key);
	int			qlen = query->numlevel;
	unsigned int hv;

	if (FUNC3(key))
		return true;

	while (qlen > 0)
	{
		hv = FUNC6(curq->name, curq->len);
		if (!FUNC1(sign, FUNC0(hv)))
			return false;
		curq = FUNC2(curq);
		qlen--;
	}

	return true;
}