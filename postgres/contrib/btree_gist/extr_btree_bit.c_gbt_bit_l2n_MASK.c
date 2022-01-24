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
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_4__ {int /*<<< orphan*/ * lower; int /*<<< orphan*/ * upper; } ;
typedef  TYPE_1__ GBT_VARKEY_R ;
typedef  int /*<<< orphan*/  GBT_VARKEY ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GBT_VARKEY *
FUNC4(GBT_VARKEY *leaf, FmgrInfo *flinfo)
{
	GBT_VARKEY *out = leaf;
	GBT_VARKEY_R r = FUNC2(leaf);
	bytea	   *o;

	o = FUNC0(r.lower);
	r.upper = r.lower = o;
	out = FUNC1(&r);
	FUNC3(o);

	return out;

}