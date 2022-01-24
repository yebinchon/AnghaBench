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
struct TYPE_4__ {int /*<<< orphan*/  availableList; } ;
struct TYPE_3__ {int /*<<< orphan*/  link; } ;
typedef  int /*<<< orphan*/  SERIALIZABLEXACT ;
typedef  TYPE_1__* PredXactListElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* PredXact ; 
 int /*<<< orphan*/  PredXactListElementData ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * link ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(SERIALIZABLEXACT *sxact)
{
	PredXactListElement ptle;

	FUNC0(FUNC3(sxact));

	ptle = (PredXactListElement)
		(((char *) sxact)
		 - FUNC4(PredXactListElementData, sxact)
		 + FUNC4(PredXactListElementData, link));
	FUNC1(&ptle->link);
	FUNC2(&PredXact->availableList, &ptle->link);
}