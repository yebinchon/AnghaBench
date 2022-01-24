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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/ * pucTxCommandBuffer; } ;
typedef  int /*<<< orphan*/  INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  EFAIL ; 
 int /*<<< orphan*/  HCI_CMND_NVMEM_WRITE ; 
 int HCI_DATA_CMD_HEADER_SIZE ; 
 int /*<<< orphan*/  HCI_EVNT_NVMEM_WRITE ; 
 int NVMEM_WRITE_PARAMS_LEN ; 
 int SPI_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ tSLInformation ; 

INT32 FUNC4(UINT32 ulFileId, UINT32 ulLength, UINT32 ulEntryOffset, UINT8 *buff)
{
	INT32 iRes;
	UINT8 *ptr;
	UINT8 *args;

	iRes = EFAIL;

	ptr = tSLInformation.pucTxCommandBuffer;
	args = (ptr + SPI_HEADER_SIZE + HCI_DATA_CMD_HEADER_SIZE);

	// Fill in HCI packet structure
	args = FUNC1(args, ulFileId);
	args = FUNC1(args, 12);
	args = FUNC1(args, ulLength);
	args = FUNC1(args, ulEntryOffset);

	FUNC3((ptr + SPI_HEADER_SIZE + HCI_DATA_CMD_HEADER_SIZE + 
		NVMEM_WRITE_PARAMS_LEN),buff,ulLength);

	// Initiate a HCI command but it will come on data channel
	FUNC2(HCI_CMND_NVMEM_WRITE, ptr, NVMEM_WRITE_PARAMS_LEN,
		ulLength);

	FUNC0(HCI_EVNT_NVMEM_WRITE, &iRes);

	return(iRes);
}