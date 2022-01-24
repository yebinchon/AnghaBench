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
typedef  int uint8 ;
typedef  int uint32 ;

/* Variables and functions */
 int BIT15 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SPI_USR ; 
 int SPI_USR_COMMAND_BITLEN ; 
 int SPI_USR_COMMAND_BITLEN_S ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(uint8 spi_no,uint8 high_bit,uint8 low_8bit)
{
	uint32 regvalue;
	uint8 bytetemp;
	if(spi_no>1) 		return; //handle invalid input number

	if(high_bit)		bytetemp=(low_8bit>>1)|0x80;
	else				bytetemp=(low_8bit>>1)&0x7f;

	regvalue= ((8&SPI_USR_COMMAND_BITLEN)<<SPI_USR_COMMAND_BITLEN_S)|((uint32)bytetemp);		//configure transmission variable,9bit transmission length and first 8 command bit
	if(low_8bit&0x01) 	regvalue|=BIT15;        //write the 9th bit
	while(FUNC0(FUNC2(spi_no))&SPI_USR);		//waiting for spi module available
	FUNC4(FUNC3(spi_no), regvalue);				//write  command and command length into spi reg
	FUNC1(FUNC2(spi_no), SPI_USR);		//transmission start
}