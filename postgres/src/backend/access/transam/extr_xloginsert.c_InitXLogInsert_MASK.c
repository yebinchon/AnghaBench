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
typedef  int /*<<< orphan*/  registered_buffer ;
typedef  int /*<<< orphan*/  XLogRecData ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int HEADER_SCRATCH_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int XLR_NORMAL_MAX_BLOCK_ID ; 
 int XLR_NORMAL_RDATAS ; 
 int /*<<< orphan*/ * hdr_scratch ; 
 int max_rdatas ; 
 int max_registered_buffers ; 
 int /*<<< orphan*/ * rdatas ; 
 int /*<<< orphan*/ * registered_buffers ; 
 int /*<<< orphan*/ * xloginsert_cxt ; 

void
FUNC3(void)
{
	/* Initialize the working areas */
	if (xloginsert_cxt == NULL)
	{
		xloginsert_cxt = FUNC0(TopMemoryContext,
											   "WAL record construction",
											   ALLOCSET_DEFAULT_SIZES);
	}

	if (registered_buffers == NULL)
	{
		registered_buffers = (registered_buffer *)
			FUNC2(xloginsert_cxt,
								   sizeof(registered_buffer) * (XLR_NORMAL_MAX_BLOCK_ID + 1));
		max_registered_buffers = XLR_NORMAL_MAX_BLOCK_ID + 1;
	}
	if (rdatas == NULL)
	{
		rdatas = FUNC1(xloginsert_cxt,
									sizeof(XLogRecData) * XLR_NORMAL_RDATAS);
		max_rdatas = XLR_NORMAL_RDATAS;
	}

	/*
	 * Allocate a buffer to hold the header information for a WAL record.
	 */
	if (hdr_scratch == NULL)
		hdr_scratch = FUNC2(xloginsert_cxt,
											 HEADER_SCRATCH_SIZE);
}