#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_13__ {int /*<<< orphan*/  fcollation; int /*<<< orphan*/  ftypmod; int /*<<< orphan*/  ftypeid; int /*<<< orphan*/  fnumber; } ;
struct TYPE_12__ {int /*<<< orphan*/  attcollation; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attnum; } ;
struct TYPE_11__ {int /*<<< orphan*/  attcollation; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attnum; int /*<<< orphan*/  attisdropped; int /*<<< orphan*/  attname; } ;
struct TYPE_10__ {int natts; } ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  TYPE_3__ FormData_pg_attribute ;
typedef  int /*<<< orphan*/  ExpandedRecordHeader ;
typedef  TYPE_4__ ExpandedRecordFieldInfo ;

/* Variables and functions */
 TYPE_3__* FUNC0 (char const*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 

bool
FUNC4(ExpandedRecordHeader *erh, const char *fieldname,
							 ExpandedRecordFieldInfo *finfo)
{
	TupleDesc	tupdesc;
	int			fno;
	Form_pg_attribute attr;
	const FormData_pg_attribute *sysattr;

	tupdesc = FUNC2(erh);

	/* First, check user-defined attributes */
	for (fno = 0; fno < tupdesc->natts; fno++)
	{
		attr = FUNC1(tupdesc, fno);
		if (FUNC3(&attr->attname, fieldname) == 0 &&
			!attr->attisdropped)
		{
			finfo->fnumber = attr->attnum;
			finfo->ftypeid = attr->atttypid;
			finfo->ftypmod = attr->atttypmod;
			finfo->fcollation = attr->attcollation;
			return true;
		}
	}

	/* How about system attributes? */
	sysattr = FUNC0(fieldname);
	if (sysattr != NULL)
	{
		finfo->fnumber = sysattr->attnum;
		finfo->ftypeid = sysattr->atttypid;
		finfo->ftypmod = sysattr->atttypmod;
		finfo->fcollation = sysattr->attcollation;
		return true;
	}

	return false;
}