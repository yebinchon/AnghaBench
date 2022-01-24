#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* name; int /*<<< orphan*/  jitarr; int /*<<< orphan*/  dsmarr; int /*<<< orphan*/  filearr; int /*<<< orphan*/  snapshotarr; int /*<<< orphan*/  tupdescarr; int /*<<< orphan*/  planrefarr; int /*<<< orphan*/  relrefarr; int /*<<< orphan*/  catlistrefarr; int /*<<< orphan*/  catrefarr; int /*<<< orphan*/  bufferarr; struct TYPE_4__* firstchild; struct TYPE_4__* nextchild; struct TYPE_4__* parent; } ;
typedef  int /*<<< orphan*/  ResourceOwnerData ;
typedef  TYPE_1__* ResourceOwner ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 

ResourceOwner
FUNC5(ResourceOwner parent, const char *name)
{
	ResourceOwner owner;

	owner = (ResourceOwner) FUNC2(TopMemoryContext,
												   sizeof(ResourceOwnerData));
	owner->name = name;

	if (parent)
	{
		owner->parent = parent;
		owner->nextchild = parent->firstchild;
		parent->firstchild = owner;
	}

	FUNC4(&(owner->bufferarr), FUNC0(InvalidBuffer));
	FUNC4(&(owner->catrefarr), FUNC3(NULL));
	FUNC4(&(owner->catlistrefarr), FUNC3(NULL));
	FUNC4(&(owner->relrefarr), FUNC3(NULL));
	FUNC4(&(owner->planrefarr), FUNC3(NULL));
	FUNC4(&(owner->tupdescarr), FUNC3(NULL));
	FUNC4(&(owner->snapshotarr), FUNC3(NULL));
	FUNC4(&(owner->filearr), FUNC1(-1));
	FUNC4(&(owner->dsmarr), FUNC3(NULL));
	FUNC4(&(owner->jitarr), FUNC3(NULL));

	return owner;
}