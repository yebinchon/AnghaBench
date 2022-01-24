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
struct TYPE_3__ {int dropflags; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAccessDrop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OAT_DROP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 

void
FUNC4(Oid classId, Oid objectId, int subId,
				  int dropflags)
{
	ObjectAccessDrop drop_arg;

	/* caller should check, but just in case... */
	FUNC0(&object_access_hook != NULL);

	FUNC1(&drop_arg, 0, sizeof(ObjectAccessDrop));
	drop_arg.dropflags = dropflags;

	FUNC2) (OAT_DROP,
						   classId, objectId, subId,
						   (void *) &drop_arg);
}