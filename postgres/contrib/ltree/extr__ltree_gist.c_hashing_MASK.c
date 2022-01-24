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
struct TYPE_9__ {int numlevel; } ;
typedef  TYPE_2__ ltree ;
typedef  int /*<<< orphan*/  BITVECP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(BITVECP sign, ltree *t)
{
	int			tlen = t->numlevel;
	ltree_level *cur = FUNC2(t);
	int			hash;

	while (tlen > 0)
	{
		hash = FUNC3(cur->name, cur->len);
		FUNC0(sign, hash);
		cur = FUNC1(cur);
		tlen--;
	}
}