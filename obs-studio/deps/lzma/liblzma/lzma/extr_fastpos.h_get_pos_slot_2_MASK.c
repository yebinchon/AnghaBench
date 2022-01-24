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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FULL_DISTANCES ; 
 scalar_t__ FULL_DISTANCES_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static inline uint32_t
FUNC3(uint32_t pos)
{
	FUNC0(pos >= FULL_DISTANCES);

	if (pos < FUNC1(FULL_DISTANCES_BITS - 1, 0))
		return FUNC2(pos, FULL_DISTANCES_BITS - 1, 0);

	if (pos < FUNC1(FULL_DISTANCES_BITS - 1, 1))
		return FUNC2(pos, FULL_DISTANCES_BITS - 1, 1);

	return FUNC2(pos, FULL_DISTANCES_BITS - 1, 2);
}