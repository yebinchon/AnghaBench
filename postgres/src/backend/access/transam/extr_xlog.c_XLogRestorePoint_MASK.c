#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rp_name; int /*<<< orphan*/  rp_time; } ;
typedef  TYPE_1__ xl_restore_point ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int XLogRecPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  MAXFNAMELEN ; 
 int /*<<< orphan*/  RM_XLOG_ID ; 
 int /*<<< orphan*/  XLOG_RESTORE_POINT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

XLogRecPtr
FUNC7(const char *rpName)
{
	XLogRecPtr	RecPtr;
	xl_restore_point xlrec;

	xlrec.rp_time = FUNC0();
	FUNC6(xlrec.rp_name, rpName, MAXFNAMELEN);

	FUNC1();
	FUNC3((char *) &xlrec, sizeof(xl_restore_point));

	RecPtr = FUNC2(RM_XLOG_ID, XLOG_RESTORE_POINT);

	FUNC4(LOG,
			(FUNC5("restore point \"%s\" created at %X/%X",
					rpName, (uint32) (RecPtr >> 32), (uint32) RecPtr)));

	return RecPtr;
}