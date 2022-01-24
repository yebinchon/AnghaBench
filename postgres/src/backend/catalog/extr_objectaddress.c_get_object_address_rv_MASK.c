#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ catalogname; scalar_t__ schemaname; scalar_t__ relname; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  ObjectType ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

ObjectAddress
FUNC3(ObjectType objtype, RangeVar *rel, List *object,
					  Relation *relp, LOCKMODE lockmode,
					  bool missing_ok)
{
	if (rel)
	{
		object = FUNC1(FUNC2(rel->relname), object);
		if (rel->schemaname)
			object = FUNC1(FUNC2(rel->schemaname), object);
		if (rel->catalogname)
			object = FUNC1(FUNC2(rel->catalogname), object);
	}

	return FUNC0(objtype, (Node *) object,
							  relp, lockmode, missing_ok);
}