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
typedef  scalar_t__* ucArgs ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;
typedef  int /*<<< orphan*/  INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  ESUCCESS ; 
 scalar_t__ HCI_TYPE_DATA ; 
 scalar_t__ SIMPLE_LINK_HCI_DATA_HEADER_SIZE ; 
 scalar_t__ SPI_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC1 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 

INT32 FUNC3(UINT8 ucOpcode, 
	UINT8 *ucArgs,
	UINT16 usArgsLength, 
	UINT16 usDataLength,
	const UINT8 *ucTail,
	UINT16 usTailLength)
{
	UINT8 *stream;

	stream = ((ucArgs) + SPI_HEADER_SIZE);

	FUNC2(stream, HCI_TYPE_DATA);
	FUNC2(stream, ucOpcode);
	FUNC2(stream, usArgsLength);
	stream = FUNC1(stream, usArgsLength + usDataLength + usTailLength);

	// Send the packet over the SPI
	FUNC0(ucArgs, SIMPLE_LINK_HCI_DATA_HEADER_SIZE + usArgsLength + usDataLength + usTailLength);

	return(ESUCCESS);
}