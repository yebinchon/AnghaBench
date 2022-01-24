#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {int attlen; int atttypmod; scalar_t__ atttypid; int /*<<< orphan*/  attname; } ;
struct TYPE_6__ {int natts; } ;
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC7(DestReceiver *self, int operation, TupleDesc tupdesc)
{
	StringInfoData buf;
	int			i;

	FUNC2(&buf, 'T'); /* RowDescription */
	FUNC4(&buf, tupdesc->natts);

	for (i = 0; i < tupdesc->natts; ++i)
	{
		Form_pg_attribute attr = FUNC1(tupdesc, i);

		FUNC6(&buf, FUNC0(attr->attname));
		FUNC5(&buf, 0);	/* table oid */
		FUNC4(&buf, 0);	/* attnum */
		FUNC5(&buf, (int) attr->atttypid);
		FUNC4(&buf, attr->attlen);
		FUNC5(&buf, attr->atttypmod);
		FUNC4(&buf, 0);	/* format code */
	}

	FUNC3(&buf);
}