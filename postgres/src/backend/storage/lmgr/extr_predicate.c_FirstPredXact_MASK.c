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
struct TYPE_4__ {int /*<<< orphan*/  activeList; } ;
struct TYPE_3__ {int /*<<< orphan*/  sxact; } ;
typedef  int /*<<< orphan*/  SERIALIZABLEXACT ;
typedef  TYPE_1__* PredXactListElement ;

/* Variables and functions */
 TYPE_2__* PredXact ; 
 int /*<<< orphan*/  PredXactListElementData ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SERIALIZABLEXACT *
FUNC2(void)
{
	PredXactListElement ptle;

	ptle = (PredXactListElement)
		FUNC0(&PredXact->activeList,
					 &PredXact->activeList,
					 FUNC1(PredXactListElementData, link));
	if (!ptle)
		return NULL;

	return &ptle->sxact;
}