#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_1__ md; } ;
struct TYPE_9__ {int /*<<< orphan*/  namedRelList; } ;
typedef  TYPE_2__ QueryEnvironment ;
typedef  TYPE_3__* EphemeralNamedRelation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void
FUNC3(QueryEnvironment *queryEnv, EphemeralNamedRelation enr)
{
	FUNC0(enr != NULL);
	FUNC0(FUNC1(queryEnv, enr->md.name) == NULL);

	queryEnv->namedRelList = FUNC2(queryEnv->namedRelList, enr);
}