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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTCK_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTDI_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTDO_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTMS_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_CLK_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_CMD_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA0_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA1_U ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int SPI_CK_OUT_EDGE ; 
 int SPI_CS_HOLD ; 
 int SPI_CS_SETUP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SPI_DIO_MODE ; 
 int SPI_DOUT_MODE ; 
 int SPI_FLASH_MODE ; 
 int SPI_HSPI ; 
 int SPI_IDLE_EDGE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int SPI_QIO_MODE ; 
 int SPI_QOUT_MODE ; 
 int SPI_RD_BYTE_ORDER ; 
 int SPI_SPI ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int SPI_USR_ADDR ; 
 int SPI_USR_COMMAND ; 
 int SPI_USR_DUMMY ; 
 int SPI_USR_MISO ; 
 int SPI_WR_BYTE_ORDER ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

void FUNC7(uint8 spi_no, unsigned cpol, unsigned cpha, uint32_t clock_div)
{
	uint32 regvalue;

	if(spi_no>1) 		return; //handle invalid input number

	FUNC2(FUNC5(spi_no), SPI_CS_SETUP|SPI_CS_HOLD|SPI_RD_BYTE_ORDER|SPI_WR_BYTE_ORDER);

	// set clock polarity (Reference: http://bbs.espressif.com/viewtopic.php?f=49&t=1570)
	// phase is dependent on polarity. See Issue #1161
	if (cpol == 1) {
		FUNC2(FUNC4(spi_no), SPI_IDLE_EDGE);
	} else {
		FUNC0(FUNC4(spi_no), SPI_IDLE_EDGE);
	}

	//set clock phase
	if (cpha == cpol) {
		// Mode 3: MOSI is set on falling edge of clock
		// Mode 0: MOSI is set on falling edge of clock
		FUNC0(FUNC5(spi_no), SPI_CK_OUT_EDGE);
	} else {
		// Mode 2: MOSI is set on rising edge of clock
		// Mode 1: MOSI is set on rising edge of clock
		FUNC2(FUNC5(spi_no), SPI_CK_OUT_EDGE);
	}

	FUNC0(FUNC5(spi_no), SPI_FLASH_MODE|SPI_USR_MISO|SPI_USR_ADDR|SPI_USR_COMMAND|SPI_USR_DUMMY);

	//clear Dual or Quad lines transmission mode
	FUNC0(FUNC3(spi_no), SPI_QIO_MODE|SPI_DIO_MODE|SPI_DOUT_MODE|SPI_QOUT_MODE);

	FUNC6(spi_no, clock_div);

	if(spi_no==SPI_SPI){
		FUNC1(PERIPHS_IO_MUX_SD_CLK_U, 1);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_SD_CMD_U, 1);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_SD_DATA0_U, 1);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_SD_DATA1_U, 1);//configure io to spi mode
	}
	else if(spi_no==SPI_HSPI){
		FUNC1(PERIPHS_IO_MUX_MTDI_U, 2);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_MTCK_U, 2);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_MTMS_U, 2);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_MTDO_U, 2);//configure io to spi mode
	}
}