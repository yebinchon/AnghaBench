#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ iNumberOfBytes; } ;
typedef  TYPE_1__ tBsdReadReturnParams ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  sockaddr ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_5__ {int /*<<< orphan*/ * pucTxCommandBuffer; } ;
typedef  int /*<<< orphan*/  INT32 ;
typedef  scalar_t__ INT16 ;
typedef  scalar_t__ CC3000_EXPORT ;

/* Variables and functions */
 int HEADERS_SIZE_CMD ; 
 int /*<<< orphan*/  SOCKET_RECV_FROM_PARAMS_LEN ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ tSLInformation ; 

__attribute__((used)) static INT16 FUNC4(INT32 sd, void *buf, INT32 len, INT32 flags, sockaddr *from,
	socklen_t *fromlen, INT32 opcode)
{
	UINT8 *ptr, *args;
	tBsdReadReturnParams tSocketReadEvent;

	ptr = tSLInformation.pucTxCommandBuffer;
	args = (ptr + HEADERS_SIZE_CMD);

	// Fill in HCI packet structure
	args = FUNC2(args, sd);
	args = FUNC2(args, len);
	args = FUNC2(args, flags);

	// Generate the read command, and wait for the 
	FUNC3(opcode,  ptr, SOCKET_RECV_FROM_PARAMS_LEN);

	// Since we are in blocking state - wait for event complete
	FUNC1(opcode, &tSocketReadEvent);

	// In case the number of bytes is more then zero - read data
	if (tSocketReadEvent.iNumberOfBytes > 0)
	{
		// Wait for the data in a synchronous way. Here we assume that the bug is 
		// big enough to store also parameters of receive from too....
		FUNC0(buf, (UINT8 *)from, (UINT8 *)fromlen);
	}

	CC3000_EXPORT(errno) = tSocketReadEvent.iNumberOfBytes;

	return(tSocketReadEvent.iNumberOfBytes);
}