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
typedef  scalar_t__ uint64 ;
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  XLogSegNo ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_2__ {int /*<<< orphan*/  ckpt_segs_added; } ;

/* Variables and functions */
 TYPE_1__ CheckpointStats ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,double) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,double) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 double wal_segment_size ; 

__attribute__((used)) static void
FUNC4(XLogRecPtr endptr)
{
	XLogSegNo	_logSegNo;
	int			lf;
	bool		use_existent;
	uint64		offset;

	FUNC0(endptr, _logSegNo, wal_segment_size);
	offset = FUNC2(endptr - 1, wal_segment_size);
	if (offset >= (uint32) (0.75 * wal_segment_size))
	{
		_logSegNo++;
		use_existent = true;
		lf = FUNC1(_logSegNo, &use_existent, true);
		FUNC3(lf);
		if (!use_existent)
			CheckpointStats.ckpt_segs_added++;
	}
}