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
typedef  int /*<<< orphan*/  ItemPointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MaxHeapTuplesPerPageBits ; 

__attribute__((used)) static inline void
FUNC4(uint64 val, ItemPointer iptr)
{
	FUNC2(iptr, val & ((1 << MaxHeapTuplesPerPageBits) - 1));
	val = val >> MaxHeapTuplesPerPageBits;
	FUNC1(iptr, val);

	FUNC0(FUNC3(iptr));
}