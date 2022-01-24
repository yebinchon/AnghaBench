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
typedef  int /*<<< orphan*/  ltree_gist ;
struct TYPE_7__ {scalar_t__ numlevel; } ;
typedef  TYPE_1__ ltree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC5(ltree_gist *key, ltree *query)
{
	ltree	   *left = FUNC2(FUNC0(key));
	ltree	   *right = FUNC2(FUNC1(key));
	bool		res = true;

	if (left->numlevel > query->numlevel)
		left->numlevel = query->numlevel;

	if (FUNC3(query, left) < 0)
		res = false;

	if (right->numlevel > query->numlevel)
		right->numlevel = query->numlevel;

	if (res && FUNC3(query, right) > 0)
		res = false;

	FUNC4(left);
	FUNC4(right);

	return res;
}