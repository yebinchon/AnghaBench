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
struct TYPE_3__ {int /*<<< orphan*/  sxact; int /*<<< orphan*/  link; } ;
typedef  int /*<<< orphan*/  SERIALIZABLEXACT ;
typedef  TYPE_1__* PredXactListElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* PredXact ; 
 int /*<<< orphan*/  PredXactListElementData ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * link ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SERIALIZABLEXACT *
FUNC4(SERIALIZABLEXACT *sxact)
{
	PredXactListElement ptle;

	FUNC0(FUNC2(sxact));

	ptle = (PredXactListElement)
		(((char *) sxact)
		 - FUNC3(PredXactListElementData, sxact)
		 + FUNC3(PredXactListElementData, link));
	ptle = (PredXactListElement)
		FUNC1(&PredXact->activeList,
					 &ptle->link,
					 FUNC3(PredXactListElementData, link));
	if (!ptle)
		return NULL;

	return &ptle->sxact;
}