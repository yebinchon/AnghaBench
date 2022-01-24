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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SPI_BYTE_ORDER_HIGH_TO_LOW ; 
 int /*<<< orphan*/  SPI_CLK_CNTDIV ; 
 int /*<<< orphan*/  SPI_CLK_PREDIV ; 
 int /*<<< orphan*/  SPI_CLK_USE_DIV ; 
 int SPI_CS_HOLD ; 
 int SPI_CS_SETUP ; 
 int /*<<< orphan*/  SPI_FLASH_MODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(uint8_t spi_no) {
    FUNC4(spi_no, SPI_CLK_USE_DIV);
    FUNC3(spi_no, SPI_CLK_PREDIV, SPI_CLK_CNTDIV);
    FUNC6(spi_no, SPI_BYTE_ORDER_HIGH_TO_LOW);
    FUNC5(spi_no, SPI_BYTE_ORDER_HIGH_TO_LOW);

    FUNC1(FUNC2(spi_no), SPI_CS_SETUP|SPI_CS_HOLD);
    FUNC0(FUNC2(spi_no), SPI_FLASH_MODE);
}