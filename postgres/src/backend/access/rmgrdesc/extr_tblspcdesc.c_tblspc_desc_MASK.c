#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ts_id; } ;
typedef  TYPE_1__ xl_tblspc_drop_rec ;
struct TYPE_4__ {int /*<<< orphan*/  ts_path; int /*<<< orphan*/  ts_id; } ;
typedef  TYPE_2__ xl_tblspc_create_rec ;
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 scalar_t__ XLOG_TBLSPC_CREATE ; 
 scalar_t__ XLOG_TBLSPC_DROP ; 
 scalar_t__ XLR_INFO_MASK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

void
FUNC3(StringInfo buf, XLogReaderState *record)
{
	char	   *rec = FUNC0(record);
	uint8		info = FUNC1(record) & ~XLR_INFO_MASK;

	if (info == XLOG_TBLSPC_CREATE)
	{
		xl_tblspc_create_rec *xlrec = (xl_tblspc_create_rec *) rec;

		FUNC2(buf, "%u \"%s\"", xlrec->ts_id, xlrec->ts_path);
	}
	else if (info == XLOG_TBLSPC_DROP)
	{
		xl_tblspc_drop_rec *xlrec = (xl_tblspc_drop_rec *) rec;

		FUNC2(buf, "%u", xlrec->ts_id);
	}
}