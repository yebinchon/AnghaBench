#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_1__* TSQuery ;
typedef  int /*<<< orphan*/  QTNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(TSQuery a, TSQuery b)
{
	if (a->size != b->size)
	{
		return (a->size < b->size) ? -1 : 1;
	}
	else if (FUNC5(a) != FUNC5(b))
	{
		return (FUNC5(a) < FUNC5(b)) ? -1 : 1;
	}
	else if (a->size != 0)
	{
		QTNode	   *an = FUNC2(FUNC1(a), FUNC0(a));
		QTNode	   *bn = FUNC2(FUNC1(b), FUNC0(b));
		int			res = FUNC4(an, bn);

		FUNC3(an);
		FUNC3(bn);

		return res;
	}

	return 0;
}