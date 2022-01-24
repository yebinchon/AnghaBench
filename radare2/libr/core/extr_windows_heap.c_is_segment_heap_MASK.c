#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int SegmentSignature; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__ HEAP ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(HANDLE h_proc, PVOID heapBase) {
	HEAP heap;
	if (FUNC0 (h_proc, heapBase, &heap, sizeof (HEAP), NULL)) {
		if (heap.SegmentSignature == 0xddeeddee) {
			return true;
		}
	}
	return false;
}