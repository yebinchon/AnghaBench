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
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 scalar_t__ HCI_TYPE_CMND ; 
 scalar_t__ SIMPLE_LINK_HCI_CMND_HEADER_SIZE ; 
 int SPI_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 

UINT16 FUNC3(UINT16 usOpcode, UINT8 *pucBuff, UINT8 ucArgsLength)
{ 
	UINT8 *stream;

	stream = (pucBuff + SPI_HEADER_SIZE);

	FUNC2(stream, HCI_TYPE_CMND);
	stream = FUNC1(stream, usOpcode);
	FUNC2(stream, ucArgsLength);

	//Update the opcode of the event we will be waiting for
	FUNC0(pucBuff, ucArgsLength + SIMPLE_LINK_HCI_CMND_HEADER_SIZE);

	return(0);
}