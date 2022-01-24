#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_7__ {int /*<<< orphan*/  flagColIdx; } ;
struct TYPE_5__ {scalar_t__ plan; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;
typedef  TYPE_2__ SetOpState ;
typedef  TYPE_3__ SetOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC3(SetOpState *setopstate, TupleTableSlot *inputslot)
{
	SetOp	   *node = (SetOp *) setopstate->ps.plan;
	int			flag;
	bool		isNull;

	flag = FUNC1(FUNC2(inputslot,
									  node->flagColIdx,
									  &isNull));
	FUNC0(!isNull);
	FUNC0(flag == 0 || flag == 1);
	return flag;
}