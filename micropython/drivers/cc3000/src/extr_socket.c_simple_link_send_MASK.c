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
typedef  int /*<<< orphan*/  tBsdReadReturnParams ;
typedef  int /*<<< orphan*/  sockaddr ;
typedef  int /*<<< orphan*/  sd ;
typedef  int /*<<< orphan*/  len ;
typedef  int UINT8 ;
typedef  int UINT32 ;
struct TYPE_2__ {int* pucTxCommandBuffer; int /*<<< orphan*/  NumberOfSentPackets; } ;
typedef  int INT32 ;
typedef  int INT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
#define  HCI_CMND_SEND 129 
#define  HCI_CMND_SENDTO 128 
 int HCI_CMND_SEND_ARG_LENGTH ; 
 int /*<<< orphan*/  HCI_EVNT_SEND ; 
 int /*<<< orphan*/  HCI_EVNT_SENDTO ; 
 int HEADERS_SIZE_DATA ; 
 int FUNC1 (int) ; 
 int SOCKET_SENDTO_PARAMS_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int,int,int*,int) ; 
 TYPE_1__ tSLInformation ; 

__attribute__((used)) static INT16 FUNC5(INT32 sd, const void *buf, INT32 len, INT32 flags,
	const sockaddr *to, INT32 tolen, INT32 opcode)
{    
	UINT8 uArgSize=0,  addrlen;
	UINT8 *ptr, *pDataPtr=0, *args;
	UINT32 addr_offset=0;
	INT16 res;
	tBsdReadReturnParams tSocketSendEvent;

	// Check the bsd_arguments
	if (0 != (res = FUNC1(sd)))
	{
		return res;
	}

	//Update the number of sent packets
	tSLInformation.NumberOfSentPackets++;

	// Allocate a buffer and construct a packet and send it over spi
	ptr = tSLInformation.pucTxCommandBuffer;
	args = (ptr + HEADERS_SIZE_DATA);

	// Update the offset of data and parameters according to the command
	switch(opcode)
	{ 
	case HCI_CMND_SENDTO:
		{
			addr_offset = len + sizeof(len) + sizeof(len);
			addrlen = 8;
			uArgSize = SOCKET_SENDTO_PARAMS_LEN;
			pDataPtr = ptr + HEADERS_SIZE_DATA + SOCKET_SENDTO_PARAMS_LEN;
			break;
		}

	case HCI_CMND_SEND:
		{
			tolen = 0;
			to = NULL;
			uArgSize = HCI_CMND_SEND_ARG_LENGTH;
			pDataPtr = ptr + HEADERS_SIZE_DATA + HCI_CMND_SEND_ARG_LENGTH;
			break;
		}

	default:
		{
			break;
		}
	}

	// Fill in temporary command buffer
	args = FUNC3(args, sd);
	args = FUNC3(args, uArgSize - sizeof(sd));
	args = FUNC3(args, len);
	args = FUNC3(args, flags);

	if (opcode == HCI_CMND_SENDTO)
	{
		args = FUNC3(args, addr_offset);
		args = FUNC3(args, addrlen);
	}

	// Copy the data received from user into the TX Buffer
	FUNC0(pDataPtr, ((UINT8 *)buf), len);

	// In case we are using SendTo, copy the to parameters
	if (opcode == HCI_CMND_SENDTO)
	{	
		FUNC0(pDataPtr, ((UINT8 *)to), tolen);
	}

	// Initiate a HCI command
	FUNC4(opcode, ptr, uArgSize, len,(UINT8*)to, tolen);

	if (opcode == HCI_CMND_SENDTO)
		FUNC2(HCI_EVNT_SENDTO, &tSocketSendEvent);
	else
		FUNC2(HCI_EVNT_SEND, &tSocketSendEvent);

	return	(len);
}