#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_5__ {size_t locktag_lockmethodid; } ;
struct TYPE_4__ {int /*<<< orphan*/  lockmode; TYPE_2__ locktag; } ;
typedef  TYPE_1__ TwoPhaseLockRecord ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  PGPROC ;
typedef  int /*<<< orphan*/  LockMethod ;
typedef  TYPE_2__ LOCKTAG ;
typedef  size_t LOCKMETHODID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * LockMethods ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(TransactionId xid, uint16 info,
						 void *recdata, uint32 len)
{
	TwoPhaseLockRecord *rec = (TwoPhaseLockRecord *) recdata;
	PGPROC	   *proc = FUNC2(xid, true);
	LOCKTAG    *locktag;
	LOCKMETHODID lockmethodid;
	LockMethod	lockMethodTable;

	FUNC0(len == sizeof(TwoPhaseLockRecord));
	locktag = &rec->locktag;
	lockmethodid = locktag->locktag_lockmethodid;

	if (lockmethodid <= 0 || lockmethodid >= FUNC4(LockMethods))
		FUNC3(ERROR, "unrecognized lock method: %d", lockmethodid);
	lockMethodTable = LockMethods[lockmethodid];

	FUNC1(lockMethodTable, proc, locktag, rec->lockmode, true);
}