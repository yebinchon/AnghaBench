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
typedef  unsigned int u32 ;
struct ag71xx {int dummy; } ;

/* Variables and functions */
 unsigned int MII_CTRL_IF_MASK ; 
 unsigned int FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,unsigned int) ; 

__attribute__((used)) static void inline FUNC2(struct ag71xx *ag,
					  unsigned int mii_if)
{
	u32 t;

	t = FUNC0(ag);
	t &= ~(MII_CTRL_IF_MASK);
	t |= (mii_if & MII_CTRL_IF_MASK);
	FUNC1(ag, t);
}