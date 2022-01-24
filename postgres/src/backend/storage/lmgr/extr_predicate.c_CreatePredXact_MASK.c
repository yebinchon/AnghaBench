#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  activeList; int /*<<< orphan*/  availableList; } ;
struct TYPE_3__ {int /*<<< orphan*/  sxact; int /*<<< orphan*/  link; } ;
typedef  int /*<<< orphan*/  SERIALIZABLEXACT ;
typedef  TYPE_1__* PredXactListElement ;

/* Variables and functions */
 TYPE_2__* PredXact ; 
 int /*<<< orphan*/  PredXactListElementData ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SERIALIZABLEXACT *
FUNC4(void)
{
	PredXactListElement ptle;

	ptle = (PredXactListElement)
		FUNC2(&PredXact->availableList,
					 &PredXact->availableList,
					 FUNC3(PredXactListElementData, link));
	if (!ptle)
		return NULL;

	FUNC0(&ptle->link);
	FUNC1(&PredXact->activeList, &ptle->link);
	return &ptle->sxact;
}