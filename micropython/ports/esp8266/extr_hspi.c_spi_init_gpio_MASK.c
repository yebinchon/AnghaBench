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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ HSPI ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTCK_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTDI_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTMS_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_CLK_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_CMD_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA0_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA1_U ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SPI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(uint8_t spi_no, uint8_t sysclk_as_spiclk) {
    uint32_t clock_div_flag = 0;
    if (sysclk_as_spiclk) {
        clock_div_flag = 0x0001;
    }
    if (spi_no == SPI) {
        // Set bit 8 if 80MHz sysclock required
        FUNC1(PERIPHS_IO_MUX, 0x005 | (clock_div_flag<<8));
        FUNC0(PERIPHS_IO_MUX_SD_CLK_U, 1);
        FUNC0(PERIPHS_IO_MUX_SD_CMD_U, 1);
        FUNC0(PERIPHS_IO_MUX_SD_DATA0_U, 1);
        FUNC0(PERIPHS_IO_MUX_SD_DATA1_U, 1);
    } else if (spi_no == HSPI) {
        // Set bit 9 if 80MHz sysclock required
        FUNC1(PERIPHS_IO_MUX, 0x105 | (clock_div_flag<<9));
        // GPIO12 is HSPI MISO pin (Master Data In)
        FUNC0(PERIPHS_IO_MUX_MTDI_U, 2);
        // GPIO13 is HSPI MOSI pin (Master Data Out)
        FUNC0(PERIPHS_IO_MUX_MTCK_U, 2);
        // GPIO14 is HSPI CLK pin (Clock)
        FUNC0(PERIPHS_IO_MUX_MTMS_U, 2);
        // GPIO15 is HSPI CS pin (Chip Select / Slave Select)
        // In MicroPython, we are handling CS ourself in drivers.
        // PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDO_U, 2);
    }
}