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
typedef  int /*<<< orphan*/  uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int SPI_USR ; 
 int SPI_USR_ADDR ; 
 int SPI_USR_COMMAND_BITLEN ; 
 int SPI_USR_COMMAND_BITLEN_S ; 
 int SPI_USR_DUMMY ; 
 int SPI_USR_MISO ; 
 int SPI_USR_MOSI ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(uint8 spi_no,uint8 *data)
 {
	uint32 regvalue;

	if(spi_no>1) 		return; //handle invalid input number

	while(FUNC1(FUNC3(spi_no))&SPI_USR);

	FUNC2(FUNC4(spi_no), SPI_USR_MISO);
	FUNC0(FUNC4(spi_no), SPI_USR_MOSI|SPI_USR_ADDR|SPI_USR_DUMMY);
		//SPI_FLASH_USER2 bit28-31 is cmd length,cmd bit length is value(0-15)+1,
	// bit15-0 is cmd value.
	//0x70000000 is for 8bits cmd, 0x06 is eps8266 slave read cmd value
	FUNC7(FUNC5(spi_no),
					((7&SPI_USR_COMMAND_BITLEN)<<SPI_USR_COMMAND_BITLEN_S)|6);
	FUNC2(FUNC3(spi_no), SPI_USR);

	while(FUNC1(FUNC3(spi_no))&SPI_USR);
	*data=(uint8)(FUNC1(FUNC6(spi_no))&0xff);
 }