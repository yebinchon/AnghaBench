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
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  Block ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int BLCKSZ ; 
 int FUNC2 (int,int) ; 
 int MaxAllocSize ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,int) ; 
 int NLocBuffer ; 
 int /*<<< orphan*/  TopMemoryContext ; 

__attribute__((used)) static Block
FUNC5(void)
{
	static char *cur_block = NULL;
	static int	next_buf_in_block = 0;
	static int	num_bufs_in_block = 0;
	static int	total_bufs_allocated = 0;
	static MemoryContext LocalBufferContext = NULL;

	char	   *this_buf;

	FUNC1(total_bufs_allocated < NLocBuffer);

	if (next_buf_in_block >= num_bufs_in_block)
	{
		/* Need to make a new request to memmgr */
		int			num_bufs;

		/*
		 * We allocate local buffers in a context of their own, so that the
		 * space eaten for them is easily recognizable in MemoryContextStats
		 * output.  Create the context on first use.
		 */
		if (LocalBufferContext == NULL)
			LocalBufferContext =
				FUNC0(TopMemoryContext,
									  "LocalBufferContext",
									  ALLOCSET_DEFAULT_SIZES);

		/* Start with a 16-buffer request; subsequent ones double each time */
		num_bufs = FUNC2(num_bufs_in_block * 2, 16);
		/* But not more than what we need for all remaining local bufs */
		num_bufs = FUNC4(num_bufs, NLocBuffer - total_bufs_allocated);
		/* And don't overflow MaxAllocSize, either */
		num_bufs = FUNC4(num_bufs, MaxAllocSize / BLCKSZ);

		cur_block = (char *) FUNC3(LocalBufferContext,
												num_bufs * BLCKSZ);
		next_buf_in_block = 0;
		num_bufs_in_block = num_bufs;
	}

	/* Allocate next buffer in current memory block */
	this_buf = cur_block + next_buf_in_block * BLCKSZ;
	next_buf_in_block++;
	total_bufs_allocated++;

	return (Block) this_buf;
}