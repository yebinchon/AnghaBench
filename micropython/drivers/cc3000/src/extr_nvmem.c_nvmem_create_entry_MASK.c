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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/ * pucTxCommandBuffer; } ;
typedef  int /*<<< orphan*/  INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_CMND_NVMEM_CREATE_ENTRY ; 
 int HEADERS_SIZE_CMD ; 
 int /*<<< orphan*/  NVMEM_CREATE_PARAMS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ tSLInformation ; 

INT32 FUNC3(UINT32 ulFileId, UINT32 ulNewLen)
{
	UINT8 *ptr; 
	UINT8 *args;
	UINT8 retval;

	ptr = tSLInformation.pucTxCommandBuffer;
	args = (ptr + HEADERS_SIZE_CMD);

	// Fill in HCI packet structure
	args = FUNC1(args, ulFileId);
	args = FUNC1(args, ulNewLen);

	// Initiate a HCI command
	FUNC2(HCI_CMND_NVMEM_CREATE_ENTRY,ptr, NVMEM_CREATE_PARAMS_LEN);

	FUNC0(HCI_CMND_NVMEM_CREATE_ENTRY, &retval);

	return(retval);
}