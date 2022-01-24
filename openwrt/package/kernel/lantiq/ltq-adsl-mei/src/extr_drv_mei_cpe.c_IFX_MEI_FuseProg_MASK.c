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
typedef  int u32 ;
typedef  scalar_t__ LTQ_FUSE_BASE ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADSL_DILV_BASE ; 
 int BRAM_ADDR_BIT_MASK ; 
 int /*<<< orphan*/  BRAM_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int IRAM0_ADDR_BIT_MASK ; 
 int /*<<< orphan*/  IRAM0_BASE ; 
 int IRAM1_ADDR_BIT_MASK ; 
 int /*<<< orphan*/  IRAM1_BASE ; 
 scalar_t__ LTQ_RCU_RST ; 
 int RX_DILV_ADDR_BIT_MASK ; 

__attribute__((used)) static void
FUNC4 (DSL_DEV_Device_t * pDev)
{
	u32 reg_data, fuse_value;
	int i = 0;

	FUNC2 ((u32) LTQ_RCU_RST, &reg_data);
	while ((reg_data & 0x10000000) == 0) {
		FUNC2 ((u32) LTQ_RCU_RST,  &reg_data);
		i++;
		/* 0x4000 translate to  about 16 ms@111M, so should be enough */
		if (i == 0x4000)
			return;
	}
	// STEP a: Prepare memory for external accesses
	// Write fuse_en bit24
	FUNC2 ((u32) LTQ_RCU_RST, &reg_data);
	FUNC3 ((u32) LTQ_RCU_RST, reg_data | (1 << 24));

	FUNC1 (pDev);
	for (i = 0; i < 4; i++) {
		FUNC2 ((u32) (LTQ_FUSE_BASE) + i * 4, &fuse_value);
		switch (fuse_value & 0xF0000) {
		case 0x80000:
			reg_data = ((fuse_value & RX_DILV_ADDR_BIT_MASK) |
				 (RX_DILV_ADDR_BIT_MASK + 0x1));
			FUNC0 (pDev, ADSL_DILV_BASE, &reg_data, 1);
			break;
		case 0x90000:
			reg_data = ((fuse_value & RX_DILV_ADDR_BIT_MASK) |
				 (RX_DILV_ADDR_BIT_MASK + 0x1));
			FUNC0 (pDev, ADSL_DILV_BASE + 4, &reg_data, 1);
			break;
		case 0xA0000:
			reg_data = ((fuse_value & IRAM0_ADDR_BIT_MASK) |
				 (IRAM0_ADDR_BIT_MASK + 0x1));
			FUNC0 (pDev, IRAM0_BASE, &reg_data, 1);
			break;
		case 0xB0000:
			reg_data = ((fuse_value & IRAM0_ADDR_BIT_MASK) |
				 (IRAM0_ADDR_BIT_MASK + 0x1));
			FUNC0 (pDev, IRAM0_BASE + 4, &reg_data, 1);
			break;
		case 0xC0000:
			reg_data = ((fuse_value & IRAM1_ADDR_BIT_MASK) |
				 (IRAM1_ADDR_BIT_MASK + 0x1));
			FUNC0 (pDev, IRAM1_BASE, &reg_data, 1);
			break;
		case 0xD0000:
			reg_data = ((fuse_value & IRAM1_ADDR_BIT_MASK) |
				 (IRAM1_ADDR_BIT_MASK + 0x1));
			FUNC0 (pDev, IRAM1_BASE + 4, &reg_data, 1);
			break;
		case 0xE0000:
			reg_data = ((fuse_value & BRAM_ADDR_BIT_MASK) |
				 (BRAM_ADDR_BIT_MASK + 0x1));
			FUNC0 (pDev, BRAM_BASE, &reg_data, 1);
			break;
		case 0xF0000:
			reg_data = ((fuse_value & BRAM_ADDR_BIT_MASK) |
				 (BRAM_ADDR_BIT_MASK + 0x1));
			FUNC0 (pDev, BRAM_BASE + 4, &reg_data, 1);
			break;
		default:	// PPE efuse
			break;
		}
	}
	FUNC2 ((u32) LTQ_RCU_RST, &reg_data);
	FUNC3 ((u32) LTQ_RCU_RST, reg_data & ~(1 << 24));
	FUNC2 ((u32) LTQ_RCU_RST, &reg_data);
}