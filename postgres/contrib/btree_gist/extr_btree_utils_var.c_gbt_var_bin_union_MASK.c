#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ (* f_cmp ) (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ gbtree_vinfo ;
struct TYPE_8__ {scalar_t__ lower; scalar_t__ upper; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ GBT_VARKEY_R ;
typedef  int /*<<< orphan*/  GBT_VARKEY ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC7(Datum *u, GBT_VARKEY *e, Oid collation,
				  const gbtree_vinfo *tinfo, FmgrInfo *flinfo)
{
	GBT_VARKEY_R eo = FUNC3(e);
	GBT_VARKEY_R nr;

	if (eo.lower == eo.upper)	/* leaf */
	{
		GBT_VARKEY *tmp;

		tmp = FUNC4(e, tinfo, flinfo);
		if (tmp != e)
			eo = FUNC3(tmp);
	}

	if (FUNC0(*u))
	{
		GBT_VARKEY_R ro = FUNC3((GBT_VARKEY *) FUNC0(*u));
		bool		update = false;

		nr.lower = ro.lower;
		nr.upper = ro.upper;

		if (tinfo->f_cmp(ro.lower, eo.lower, collation, flinfo) > 0)
		{
			nr.lower = eo.lower;
			update = true;
		}

		if (tinfo->f_cmp(ro.upper, eo.upper, collation, flinfo) < 0)
		{
			nr.upper = eo.upper;
			update = true;
		}

		if (update)
			*u = FUNC1(FUNC2(&nr));
	}
	else
	{
		nr.lower = eo.lower;
		nr.upper = eo.upper;
		*u = FUNC1(FUNC2(&nr));
	}
}