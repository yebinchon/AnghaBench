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
typedef  int uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int SPI_CLKCNT_H ; 
 int SPI_CLKCNT_H_S ; 
 int SPI_CLKCNT_L ; 
 int SPI_CLKCNT_L_S ; 
 int SPI_CLKCNT_N ; 
 int SPI_CLKCNT_N_S ; 
 int SPI_CLKDIV_PRE ; 
 int SPI_CLKDIV_PRE_S ; 
 int SPI_CLK_EQU_SYSCLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(uint8_t spi_no, uint16_t prediv, uint8_t cntdiv) {
    if (prediv == 0 || cntdiv == 0) {
        FUNC1(FUNC0(spi_no), SPI_CLK_EQU_SYSCLK);
    } else {
        FUNC1(FUNC0(spi_no),
           (((prediv - 1) & SPI_CLKDIV_PRE) << SPI_CLKDIV_PRE_S) |
           (((cntdiv - 1) & SPI_CLKCNT_N) << SPI_CLKCNT_N_S) |
           (((cntdiv >> 1) & SPI_CLKCNT_H) << SPI_CLKCNT_H_S) |
           ((0 & SPI_CLKCNT_L) << SPI_CLKCNT_L_S)
        );
    }
}