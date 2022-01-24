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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b53_device*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,int,int,int*) ; 

__attribute__((used)) static int FUNC3(struct b53_device *dev, u8 page, u8 reg, u64 *val)
{
	if (FUNC0(reg % 2))
		return -EINVAL;

	if (reg % 4) {
		u16 lo;
		u32 hi;

		FUNC1(dev, page, reg, &lo);
		FUNC2(dev, page, reg + 2, &hi);

		*val = ((u64)hi << 16) | lo;
	} else {
		u32 lo;
		u16 hi;

		FUNC2(dev, page, reg, &lo);
		FUNC1(dev, page, reg + 4, &hi);

		*val = ((u64)hi << 32) | lo;
	}

	return 0;
}