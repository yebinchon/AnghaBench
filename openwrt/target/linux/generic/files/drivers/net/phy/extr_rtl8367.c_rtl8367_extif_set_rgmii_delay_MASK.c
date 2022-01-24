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
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int RTL8367_EXT_RGMXF_RXDELAY_MASK ; 
 unsigned int RTL8367_EXT_RGMXF_TXDELAY_MASK ; 
 unsigned int RTL8367_EXT_RGMXF_TXDELAY_SHIFT ; 

__attribute__((used)) static int FUNC2(struct rtl8366_smi *smi, int id,
					 unsigned txdelay, unsigned rxdelay)
{
	u32 mask;
	u32 val;
	int err;

	mask = (RTL8367_EXT_RGMXF_RXDELAY_MASK |
		(RTL8367_EXT_RGMXF_TXDELAY_MASK <<
			RTL8367_EXT_RGMXF_TXDELAY_SHIFT));

	val = rxdelay;
	val |= txdelay << RTL8367_EXT_RGMXF_TXDELAY_SHIFT;

	FUNC0(smi, FUNC1(id), mask, val);

	return 0;
}