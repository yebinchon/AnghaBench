#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct gsw_mt753x {int dummy; } ;
struct TYPE_2__ {unsigned int offset; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 TYPE_1__* mt753x_mibs ; 
 int FUNC1 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC2(struct gsw_mt753x *gsw, int i, int port)
{
	unsigned int offset;
	u64 lo, hi, hi2;

	offset = mt753x_mibs[i].offset;

	if (mt753x_mibs[i].size == 1)
		return FUNC1(gsw, FUNC0(port, offset));

	do {
		hi = FUNC1(gsw, FUNC0(port, offset + 4));
		lo = FUNC1(gsw, FUNC0(port, offset));
		hi2 = FUNC1(gsw, FUNC0(port, offset + 4));
	} while (hi2 != hi);

	return (hi << 32) | lo;
}