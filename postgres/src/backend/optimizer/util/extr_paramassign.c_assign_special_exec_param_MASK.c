#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* glob; } ;
struct TYPE_4__ {int /*<<< orphan*/  paramExecTypes; } ;
typedef  TYPE_2__ PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(PlannerInfo *root)
{
	int			paramId = FUNC1(root->glob->paramExecTypes);

	root->glob->paramExecTypes = FUNC0(root->glob->paramExecTypes,
											 InvalidOid);
	return paramId;
}