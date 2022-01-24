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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 int MaxHeapTuplesPerPageBits ; 

__attribute__((used)) static inline uint64
FUNC4(const ItemPointer iptr)
{
	uint64		val;

	FUNC0(FUNC3(iptr));
	FUNC0(FUNC2(iptr) < (1 << MaxHeapTuplesPerPageBits));

	val = FUNC1(iptr);
	val <<= MaxHeapTuplesPerPageBits;
	val |= FUNC2(iptr);

	return val;
}