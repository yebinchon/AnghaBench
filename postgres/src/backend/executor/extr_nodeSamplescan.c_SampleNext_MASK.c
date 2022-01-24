#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_5__ {int /*<<< orphan*/  begun; } ;
typedef  TYPE_1__ SampleScanState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static TupleTableSlot *
FUNC2(SampleScanState *node)
{
	/*
	 * if this is first call within a scan, initialize
	 */
	if (!node->begun)
		FUNC1(node);

	/*
	 * get the next tuple, and store it in our result slot
	 */
	return FUNC0(node);
}