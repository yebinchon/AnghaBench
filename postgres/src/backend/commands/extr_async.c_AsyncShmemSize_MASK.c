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
typedef  int /*<<< orphan*/  QueueBackendStatus ;

/* Variables and functions */
 int /*<<< orphan*/  AsyncQueueControl ; 
 scalar_t__ MaxBackends ; 
 int /*<<< orphan*/  NUM_ASYNC_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  backend ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Size
FUNC4(void)
{
	Size		size;

	/* This had better match AsyncShmemInit */
	size = FUNC2(MaxBackends + 1, sizeof(QueueBackendStatus));
	size = FUNC1(size, FUNC3(AsyncQueueControl, backend));

	size = FUNC1(size, FUNC0(NUM_ASYNC_BUFFERS, 0));

	return size;
}