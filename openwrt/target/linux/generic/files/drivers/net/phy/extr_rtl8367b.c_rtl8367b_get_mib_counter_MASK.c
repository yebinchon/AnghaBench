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
typedef  int u64 ;
typedef  int u32 ;
struct rtl8366_smi {int dummy; } ;
struct rtl8366_mib_counter {int offset; int length; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTL8367B_MIB_ADDRESS_REG ; 
 int RTL8367B_MIB_COUNTER_PORT_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int RTL8367B_MIB_CTRL0_BUSY_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int RTL8367B_MIB_CTRL0_RESET_MASK ; 
 int RTL8367B_NUM_MIB_COUNTERS ; 
 int RTL8367B_NUM_PORTS ; 
 struct rtl8366_mib_counter* rtl8367b_mib_counters ; 

__attribute__((used)) static int FUNC4(struct rtl8366_smi *smi, int counter,
				    int port, unsigned long long *val)
{
	struct rtl8366_mib_counter *mib;
	int offset;
	int i;
	int err;
	u32 addr, data;
	u64 mibvalue;

	if (port > RTL8367B_NUM_PORTS ||
	    counter >= RTL8367B_NUM_MIB_COUNTERS)
		return -EINVAL;

	mib = &rtl8367b_mib_counters[counter];
	addr = RTL8367B_MIB_COUNTER_PORT_OFFSET * port + mib->offset;

	/*
	 * Writing access counter address first
	 * then ASIC will prepare 64bits counter wait for being retrived
	 */
	FUNC1(smi, RTL8367B_MIB_ADDRESS_REG, addr >> 2);

	/* read MIB control register */
	FUNC0(smi, FUNC3(0), &data);

	if (data & RTL8367B_MIB_CTRL0_BUSY_MASK)
		return -EBUSY;

	if (data & RTL8367B_MIB_CTRL0_RESET_MASK)
		return -EIO;

	if (mib->length == 4)
		offset = 3;
	else
		offset = (mib->offset + 1) % 4;

	mibvalue = 0;
	for (i = 0; i < mib->length; i++) {
		FUNC0(smi, FUNC2(offset - i), &data);
		mibvalue = (mibvalue << 16) | (data & 0xFFFF);
	}

	*val = mibvalue;
	return 0;
}