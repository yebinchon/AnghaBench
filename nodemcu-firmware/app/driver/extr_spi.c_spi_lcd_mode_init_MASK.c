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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX ; 
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
 int SPI_CLKCNT_H ; 
 int SPI_CLKCNT_H_S ; 
 int SPI_CLKCNT_L ; 
 int SPI_CLKCNT_L_S ; 
 int SPI_CLKCNT_N ; 
 int SPI_CLKCNT_N_S ; 
 int SPI_CLKDIV_PRE ; 
 int SPI_CLKDIV_PRE_S ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SPI_CS_HOLD ; 
 int SPI_CS_SETUP ; 
 int /*<<< orphan*/  SPI_FLASH_MODE ; 
 int SPI_HSPI ; 
 int SPI_SPI ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int SPI_USR_COMMAND ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(uint8 spi_no)
{
	uint32 regvalue;
	if(spi_no>1) 		return; //handle invalid input number
	//bit9 of PERIPHS_IO_MUX should be cleared when HSPI clock doesn't equal CPU clock
	//bit8 of PERIPHS_IO_MUX should be cleared when SPI clock doesn't equal CPU clock
	if(spi_no==SPI_SPI){
		FUNC5(PERIPHS_IO_MUX, 0x005); //clear bit9,and bit8
		FUNC1(PERIPHS_IO_MUX_SD_CLK_U, 1);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_SD_CMD_U, 1);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_SD_DATA0_U, 1);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_SD_DATA1_U, 1);//configure io to spi mode
	}else if(spi_no==SPI_HSPI){
		FUNC5(PERIPHS_IO_MUX, 0x105); //clear bit9
		FUNC1(PERIPHS_IO_MUX_MTDI_U, 2);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_MTCK_U, 2);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_MTMS_U, 2);//configure io to spi mode
		FUNC1(PERIPHS_IO_MUX_MTDO_U, 2);//configure io to spi mode
	}

	FUNC2(FUNC4(spi_no), SPI_CS_SETUP|SPI_CS_HOLD|SPI_USR_COMMAND);
	FUNC0(FUNC4(spi_no), SPI_FLASH_MODE);
	// SPI clock=CPU clock/8
	FUNC5(FUNC3(spi_no),
					((1&SPI_CLKDIV_PRE)<<SPI_CLKDIV_PRE_S)|
					((3&SPI_CLKCNT_N)<<SPI_CLKCNT_N_S)|
					((1&SPI_CLKCNT_H)<<SPI_CLKCNT_H_S)|
					((3&SPI_CLKCNT_L)<<SPI_CLKCNT_L_S)); //clear bit 31,set SPI clock div

}