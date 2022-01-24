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
typedef  scalar_t__ int32 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attcollation; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 scalar_t__ RECORDOID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (scalar_t__,int,int) ; 

__attribute__((used)) static bool
FUNC3(Oid rowtypeid, int fieldnum,
					  Oid expectedtype, int32 expectedtypmod,
					  Oid expectedcollation)
{
	TupleDesc	tupdesc;
	Form_pg_attribute attr;

	/* No issue for RECORD, since there is no way to ALTER such a type */
	if (rowtypeid == RECORDOID)
		return true;
	tupdesc = FUNC2(rowtypeid, -1, false);
	if (fieldnum <= 0 || fieldnum > tupdesc->natts)
	{
		FUNC0(tupdesc);
		return false;
	}
	attr = FUNC1(tupdesc, fieldnum - 1);
	if (attr->attisdropped ||
		attr->atttypid != expectedtype ||
		attr->atttypmod != expectedtypmod ||
		attr->attcollation != expectedcollation)
	{
		FUNC0(tupdesc);
		return false;
	}
	FUNC0(tupdesc);
	return true;
}