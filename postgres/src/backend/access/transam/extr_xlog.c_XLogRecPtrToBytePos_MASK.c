#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64 ;
typedef  int uint32 ;
typedef  int XLogRecPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SizeOfXLogLongPHD ; 
 int SizeOfXLogShortPHD ; 
 int UsableBytesInPage ; 
 int UsableBytesInSegment ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int XLOG_BLCKSZ ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wal_segment_size ; 

__attribute__((used)) static uint64
FUNC3(XLogRecPtr ptr)
{
	uint64		fullsegs;
	uint32		fullpages;
	uint32		offset;
	uint64		result;

	FUNC1(ptr, fullsegs, wal_segment_size);

	fullpages = (FUNC2(ptr, wal_segment_size)) / XLOG_BLCKSZ;
	offset = ptr % XLOG_BLCKSZ;

	if (fullpages == 0)
	{
		result = fullsegs * UsableBytesInSegment;
		if (offset > 0)
		{
			FUNC0(offset >= SizeOfXLogLongPHD);
			result += offset - SizeOfXLogLongPHD;
		}
	}
	else
	{
		result = fullsegs * UsableBytesInSegment +
			(XLOG_BLCKSZ - SizeOfXLogLongPHD) + /* account for first page */
			(fullpages - 1) * UsableBytesInPage;	/* full pages */
		if (offset > 0)
		{
			FUNC0(offset >= SizeOfXLogShortPHD);
			result += offset - SizeOfXLogShortPHD;
		}
	}

	return result;
}