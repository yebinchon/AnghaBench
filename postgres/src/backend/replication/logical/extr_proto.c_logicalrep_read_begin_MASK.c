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
struct TYPE_3__ {scalar_t__ final_lsn; int /*<<< orphan*/  xid; void* committime; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ LogicalRepBeginData ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(StringInfo in, LogicalRepBeginData *begin_data)
{
	/* read fields */
	begin_data->final_lsn = FUNC2(in);
	if (begin_data->final_lsn == InvalidXLogRecPtr)
		FUNC0(ERROR, "final_lsn not set in begin message");
	begin_data->committime = FUNC2(in);
	begin_data->xid = FUNC1(in, 4);
}