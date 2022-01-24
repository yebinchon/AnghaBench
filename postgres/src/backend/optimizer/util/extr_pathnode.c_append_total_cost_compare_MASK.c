#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  relids; } ;
typedef  TYPE_2__ Path ;
typedef  int /*<<< orphan*/  ListCell ;

/* Variables and functions */
 int /*<<< orphan*/  TOTAL_COST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC3(const ListCell *a, const ListCell *b)
{
	Path	   *path1 = (Path *) FUNC2(a);
	Path	   *path2 = (Path *) FUNC2(b);
	int			cmp;

	cmp = FUNC1(path1, path2, TOTAL_COST);
	if (cmp != 0)
		return -cmp;
	return FUNC0(path1->parent->relids, path2->parent->relids);
}