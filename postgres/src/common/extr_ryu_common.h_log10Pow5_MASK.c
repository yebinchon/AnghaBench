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
typedef  int uint32 ;
typedef  int int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline int32
FUNC1(const int32 e)
{
	/*
	 * The first value this approximation fails for is 5^2621 which is just
	 * greater than 10^1832.
	 */
	FUNC0(e >= 0);
	FUNC0(e <= 2620);
	return (int32) ((((uint32) e) * 732923) >> 20);
}