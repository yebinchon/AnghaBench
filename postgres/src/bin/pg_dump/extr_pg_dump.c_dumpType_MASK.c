#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dump; } ;
struct TYPE_20__ {scalar_t__ typtype; TYPE_1__ dobj; int /*<<< orphan*/  isDefined; } ;
typedef  TYPE_2__ TypeInfo ;
struct TYPE_22__ {TYPE_3__* dopt; } ;
struct TYPE_21__ {scalar_t__ dataOnly; } ;
typedef  TYPE_3__ DumpOptions ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 scalar_t__ TYPTYPE_BASE ; 
 scalar_t__ TYPTYPE_COMPOSITE ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 scalar_t__ TYPTYPE_ENUM ; 
 scalar_t__ TYPTYPE_PSEUDO ; 
 scalar_t__ TYPTYPE_RANGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(Archive *fout, TypeInfo *tyinfo)
{
	DumpOptions *dopt = fout->dopt;

	/* Skip if not to be dumped */
	if (!tyinfo->dobj.dump || dopt->dataOnly)
		return;

	/* Dump out in proper style */
	if (tyinfo->typtype == TYPTYPE_BASE)
		FUNC0(fout, tyinfo);
	else if (tyinfo->typtype == TYPTYPE_DOMAIN)
		FUNC2(fout, tyinfo);
	else if (tyinfo->typtype == TYPTYPE_COMPOSITE)
		FUNC1(fout, tyinfo);
	else if (tyinfo->typtype == TYPTYPE_ENUM)
		FUNC3(fout, tyinfo);
	else if (tyinfo->typtype == TYPTYPE_RANGE)
		FUNC4(fout, tyinfo);
	else if (tyinfo->typtype == TYPTYPE_PSEUDO && !tyinfo->isDefined)
		FUNC5(fout, tyinfo);
	else
		FUNC6("typtype of data type \"%s\" appears to be invalid",
					   tyinfo->dobj.name);
}