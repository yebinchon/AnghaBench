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
typedef  int /*<<< orphan*/  xlrec ;
struct TYPE_3__ {int relcacheInitFileInval; int nmsgs; int /*<<< orphan*/  tsId; int /*<<< orphan*/  dbId; } ;
typedef  TYPE_1__ xl_invalidations ;
typedef  int /*<<< orphan*/  SharedInvalidationMessage ;

/* Variables and functions */
 int MinSizeOfInvalidations ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  MyDatabaseTableSpace ; 
 int /*<<< orphan*/  RM_STANDBY_ID ; 
 int /*<<< orphan*/  XLOG_INVALIDATIONS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(int nmsgs, SharedInvalidationMessage *msgs,
						bool relcacheInitFileInval)
{
	xl_invalidations xlrec;

	/* prepare record */
	FUNC3(&xlrec, 0, sizeof(xlrec));
	xlrec.dbId = MyDatabaseId;
	xlrec.tsId = MyDatabaseTableSpace;
	xlrec.relcacheInitFileInval = relcacheInitFileInval;
	xlrec.nmsgs = nmsgs;

	/* perform insertion */
	FUNC0();
	FUNC2((char *) (&xlrec), MinSizeOfInvalidations);
	FUNC2((char *) msgs,
					 nmsgs * sizeof(SharedInvalidationMessage));
	FUNC1(RM_STANDBY_ID, XLOG_INVALIDATIONS);
}