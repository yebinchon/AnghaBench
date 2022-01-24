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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HSPI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_CK_I_EDGE ; 
 int /*<<< orphan*/  SPI_CK_OUT_EDGE ; 
 int /*<<< orphan*/  SPI_IDLE_EDGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(uint8_t spi_no, uint8_t spi_cpha, uint8_t spi_cpol) {
    if (spi_cpol) {
        FUNC1(FUNC2(HSPI), SPI_IDLE_EDGE);
    } else {
        FUNC0(FUNC2(HSPI), SPI_IDLE_EDGE);
    }
    if (spi_cpha == spi_cpol) {
        // Mode 3 - MOSI is set on falling edge of clock
        // Mode 0 - MOSI is set on falling edge of clock
        FUNC0(FUNC3(HSPI), SPI_CK_OUT_EDGE);
        FUNC1(FUNC3(HSPI), SPI_CK_I_EDGE);
    } else {
        // Mode 2 - MOSI is set on rising edge of clock
        // Mode 1 - MOSI is set on rising edge of clock
        FUNC1(FUNC3(HSPI), SPI_CK_OUT_EDGE);
        FUNC0(FUNC3(HSPI), SPI_CK_I_EDGE);
    }
}