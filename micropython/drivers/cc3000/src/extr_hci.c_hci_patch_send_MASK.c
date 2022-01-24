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
typedef  int /*<<< orphan*/  usTransLength ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int HCI_PATCH_HEADER_SIZE ; 
 int /*<<< orphan*/  HCI_TYPE_PATCH ; 
 int SIMPLE_LINK_HCI_PATCH_HEADER_SIZE ; 
 int SL_PATCH_PORTION_SIZE ; 
 int SPI_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC4(UINT8 ucOpcode, UINT8 *pucBuff, CHAR *patch, UINT16 usDataLength)
{ 
	UINT8 *data_ptr = (pucBuff + SPI_HEADER_SIZE);
	UINT16 usTransLength;
	UINT8 *stream = (pucBuff + SPI_HEADER_SIZE);

	FUNC2(stream, HCI_TYPE_PATCH);
	FUNC2(stream, ucOpcode);
	stream = FUNC1(stream, usDataLength + SIMPLE_LINK_HCI_PATCH_HEADER_SIZE);

	if (usDataLength <= SL_PATCH_PORTION_SIZE)
	{
		FUNC1(stream, usDataLength);
		stream = FUNC1(stream, usDataLength);
		FUNC3((pucBuff + SPI_HEADER_SIZE) + HCI_PATCH_HEADER_SIZE, patch, usDataLength);

		// Update the opcode of the event we will be waiting for
		FUNC0(pucBuff, usDataLength + HCI_PATCH_HEADER_SIZE);
	}
	else
	{

		usTransLength = (usDataLength/SL_PATCH_PORTION_SIZE);
		FUNC1(stream, usDataLength + SIMPLE_LINK_HCI_PATCH_HEADER_SIZE + usTransLength*SIMPLE_LINK_HCI_PATCH_HEADER_SIZE);
		stream = FUNC1(stream, SL_PATCH_PORTION_SIZE);
		FUNC3(pucBuff + SPI_HEADER_SIZE + HCI_PATCH_HEADER_SIZE, patch, SL_PATCH_PORTION_SIZE);
		usDataLength -= SL_PATCH_PORTION_SIZE;
		patch += SL_PATCH_PORTION_SIZE;

		// Update the opcode of the event we will be waiting for
		FUNC0(pucBuff, SL_PATCH_PORTION_SIZE + HCI_PATCH_HEADER_SIZE);

		while (usDataLength)
		{
			if (usDataLength <= SL_PATCH_PORTION_SIZE)
			{
				usTransLength = usDataLength;
				usDataLength = 0;

			}
			else
			{
				usTransLength = SL_PATCH_PORTION_SIZE;
				usDataLength -= usTransLength;
			}

			*(UINT16 *)data_ptr = usTransLength;
			FUNC3(data_ptr + SIMPLE_LINK_HCI_PATCH_HEADER_SIZE, patch, usTransLength);
			patch += usTransLength;

			// Update the opcode of the event we will be waiting for
			FUNC0((UINT8 *)data_ptr, usTransLength + sizeof(usTransLength));
		}
	}
}