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
typedef  scalar_t__ UINT16 ;

/* Variables and functions */
 scalar_t__ HCI_TYPE_DATA ; 
 scalar_t__ SIMPLE_LINK_HCI_DATA_CMND_HEADER_SIZE ; 
 int SPI_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC1 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 

void FUNC3(UINT16 usOpcode, UINT8 *pucBuff, UINT8 ucArgsLength,UINT16 ucDataLength)
{ 
	UINT8 *stream = (pucBuff + SPI_HEADER_SIZE);

	FUNC2(stream, HCI_TYPE_DATA);
	FUNC2(stream, usOpcode);
	FUNC2(stream, ucArgsLength);
	stream = FUNC1(stream, ucArgsLength + ucDataLength);

	// Send the command over SPI on data channel
	FUNC0(pucBuff, ucArgsLength + ucDataLength + SIMPLE_LINK_HCI_DATA_CMND_HEADER_SIZE);

	return;
}