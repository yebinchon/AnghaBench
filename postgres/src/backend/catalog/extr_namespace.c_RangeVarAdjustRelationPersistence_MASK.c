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
struct TYPE_3__ {int relpersistence; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
#define  RELPERSISTENCE_PERMANENT 129 
#define  RELPERSISTENCE_TEMP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(RangeVar *newRelation, Oid nspid)
{
	switch (newRelation->relpersistence)
	{
		case RELPERSISTENCE_TEMP:
			if (!FUNC4(nspid))
			{
				if (FUNC3(nspid))
					FUNC0(ERROR,
							(FUNC1(ERRCODE_INVALID_TABLE_DEFINITION),
							 FUNC2("cannot create relations in temporary schemas of other sessions")));
				else
					FUNC0(ERROR,
							(FUNC1(ERRCODE_INVALID_TABLE_DEFINITION),
							 FUNC2("cannot create temporary relation in non-temporary schema")));
			}
			break;
		case RELPERSISTENCE_PERMANENT:
			if (FUNC4(nspid))
				newRelation->relpersistence = RELPERSISTENCE_TEMP;
			else if (FUNC3(nspid))
				FUNC0(ERROR,
						(FUNC1(ERRCODE_INVALID_TABLE_DEFINITION),
						 FUNC2("cannot create relations in temporary schemas of other sessions")));
			break;
		default:
			if (FUNC3(nspid))
				FUNC0(ERROR,
						(FUNC1(ERRCODE_INVALID_TABLE_DEFINITION),
						 FUNC2("only temporary relations may be created in temporary schemas")));
	}
}