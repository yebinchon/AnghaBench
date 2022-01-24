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
typedef  int /*<<< orphan*/  WorkerInfoData ;
typedef  int Size ;
typedef  int /*<<< orphan*/  AutoVacuumShmemStruct ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  autovacuum_max_workers ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

Size
FUNC3(void)
{
	Size		size;

	/*
	 * Need the fixed struct and the array of WorkerInfoData.
	 */
	size = sizeof(AutoVacuumShmemStruct);
	size = FUNC0(size);
	size = FUNC1(size, FUNC2(autovacuum_max_workers,
								   sizeof(WorkerInfoData)));
	return size;
}