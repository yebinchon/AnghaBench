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
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  BufferStrategyControl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ NBuffers ; 
 scalar_t__ NUM_BUFFER_PARTITIONS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Size
FUNC3(void)
{
	Size		size = 0;

	/* size of lookup hash table ... see comment in StrategyInitialize */
	size = FUNC2(size, FUNC0(NBuffers + NUM_BUFFER_PARTITIONS));

	/* size of the shared replacement strategy control block */
	size = FUNC2(size, FUNC1(sizeof(BufferStrategyControl)));

	return size;
}