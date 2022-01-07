
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int SPI_CLKCNT_H ;
 int SPI_CLKCNT_H_S ;
 int SPI_CLKCNT_L ;
 int SPI_CLKCNT_L_S ;
 int SPI_CLKCNT_N ;
 int SPI_CLKCNT_N_S ;
 int SPI_CLKDIV_PRE ;
 int SPI_CLKDIV_PRE_S ;
 int SPI_CLK_EQU_SYSCLK ;
 int SPI_CLOCK (int) ;
 int WRITE_PERI_REG (int ,int) ;

void spi_clock(uint8_t spi_no, uint16_t prediv, uint8_t cntdiv) {
    if (prediv == 0 || cntdiv == 0) {
        WRITE_PERI_REG(SPI_CLOCK(spi_no), SPI_CLK_EQU_SYSCLK);
    } else {
        WRITE_PERI_REG(SPI_CLOCK(spi_no),
           (((prediv - 1) & SPI_CLKDIV_PRE) << SPI_CLKDIV_PRE_S) |
           (((cntdiv - 1) & SPI_CLKCNT_N) << SPI_CLKCNT_N_S) |
           (((cntdiv >> 1) & SPI_CLKCNT_H) << SPI_CLKCNT_H_S) |
           ((0 & SPI_CLKCNT_L) << SPI_CLKCNT_L_S)
        );
    }
}
