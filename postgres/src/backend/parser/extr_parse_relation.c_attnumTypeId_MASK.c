#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int natts; } ;
struct TYPE_9__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_8__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_7__ {TYPE_5__* rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ FormData_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* FUNC0 (int) ; 
 TYPE_4__* FUNC1 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

Oid
FUNC3(Relation rd, int attid)
{
	if (attid <= 0)
	{
		const FormData_pg_attribute *sysatt;

		sysatt = FUNC0(attid);
		return sysatt->atttypid;
	}
	if (attid > rd->rd_att->natts)
		FUNC2(ERROR, "invalid attribute number %d", attid);
	return FUNC1(rd->rd_att, attid - 1)->atttypid;
}