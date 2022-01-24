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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  DSL_DEV_MeiError_t ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_DEV_MEI_ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JTAG_MASTER_MODE ; 
 int /*<<< orphan*/  MEI_MASTER_MODE ; 
 int /*<<< orphan*/  ME_DBG_DECODE_DMP1_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static DSL_DEV_MeiError_t
FUNC2 (DSL_DEV_Device_t * pDev, u32 srcaddr, u32 * databuff, u32 databuffsize)
{
	u32 i;
	u32 temp = 0x0;
	u32 address = 0x0;
	u32 *buffer = 0x0;

	//      Open the debug port before DMP memory read
	FUNC0 (pDev, MEI_MASTER_MODE);

	//      For the requested length, write the address and read the data
	address = srcaddr;
	buffer = databuff;
	for (i = 0; i < databuffsize; i++) {
		FUNC1 (pDev, ME_DBG_DECODE_DMP1_MASK, address, &temp);
		*buffer = temp;
		address += 4;
		buffer++;
	}

	//      Close the debug port after DMP memory read
	FUNC0 (pDev, JTAG_MASTER_MODE);

	return DSL_DEV_MEI_ERR_SUCCESS;
}