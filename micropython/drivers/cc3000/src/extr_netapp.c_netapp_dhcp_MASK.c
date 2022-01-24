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
typedef  int /*<<< orphan*/  INT8 ;
typedef  int /*<<< orphan*/  INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EFAIL ; 
 int /*<<< orphan*/  HCI_NETAPP_DHCP ; 
 int HEADERS_SIZE_CMD ; 
 int /*<<< orphan*/  NETAPP_DHCP_PARAMS_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ tSLInformation ; 

INT32 FUNC4(UINT32 *aucIP, UINT32 *aucSubnetMask,UINT32 *aucDefaultGateway, UINT32 *aucDNSServer)
{
	INT8 scRet;
	UINT8 *ptr;
	UINT8 *args;

	scRet = EFAIL;
	ptr = tSLInformation.pucTxCommandBuffer;
	args = (ptr + HEADERS_SIZE_CMD);

	// Fill in temporary command buffer
	FUNC0(args,aucIP,4);
	FUNC0(args,aucSubnetMask,4);
	FUNC0(args,aucDefaultGateway,4);
	args = FUNC2(args, 0);
	FUNC0(args,aucDNSServer,4);

	// Initiate a HCI command
	FUNC3(HCI_NETAPP_DHCP, ptr, NETAPP_DHCP_PARAMS_LEN);

	// Wait for command complete event
	FUNC1(HCI_NETAPP_DHCP, &scRet);

	return(scRet);
}