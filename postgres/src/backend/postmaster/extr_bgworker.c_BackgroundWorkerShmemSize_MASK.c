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
typedef  int /*<<< orphan*/  BackgroundWorkerSlot ;

/* Variables and functions */
 int /*<<< orphan*/  BackgroundWorkerArray ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_worker_processes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slot ; 

Size
FUNC3(void)
{
	Size		size;

	/* Array of workers is variably sized. */
	size = FUNC2(BackgroundWorkerArray, slot);
	size = FUNC0(size, FUNC1(max_worker_processes,
								   sizeof(BackgroundWorkerSlot)));

	return size;
}