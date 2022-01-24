#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vars {size_t nsubs; struct subre** subs; struct subre** sub10; } ;
struct subre {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (struct subre**,size_t) ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  FUNC3 (struct subre**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct vars *v,
		 int wanted)			/* want enough room for this one */
{
	struct subre **p;
	size_t		n;

	FUNC4(wanted > 0 && (size_t) wanted >= v->nsubs);
	n = (size_t) wanted * 3 / 2 + 1;

	if (v->subs == v->sub10)
	{
		p = (struct subre **) FUNC1(n * sizeof(struct subre *));
		if (p != NULL)
			FUNC5(FUNC3(p), FUNC3(v->subs),
				   v->nsubs * sizeof(struct subre *));
	}
	else
		p = (struct subre **) FUNC2(v->subs, n * sizeof(struct subre *));
	if (p == NULL)
	{
		FUNC0(REG_ESPACE);
		return;
	}
	v->subs = p;
	for (p = &v->subs[v->nsubs]; v->nsubs < n; p++, v->nsubs++)
		*p = NULL;
	FUNC4(v->nsubs == n);
	FUNC4((size_t) wanted < v->nsubs);
}