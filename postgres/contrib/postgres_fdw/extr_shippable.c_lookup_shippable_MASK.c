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
struct TYPE_3__ {int /*<<< orphan*/  shippable_extensions; } ;
typedef  TYPE_1__ PgFdwRelationInfo ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(Oid objectId, Oid classId, PgFdwRelationInfo *fpinfo)
{
	Oid			extensionOid;

	/*
	 * Is object a member of some extension?  (Note: this is a fairly
	 * expensive lookup, which is why we try to cache the results.)
	 */
	extensionOid = FUNC1(classId, objectId);

	/* If so, is that extension in fpinfo->shippable_extensions? */
	if (FUNC0(extensionOid) &&
		FUNC2(fpinfo->shippable_extensions, extensionOid))
		return true;

	return false;
}