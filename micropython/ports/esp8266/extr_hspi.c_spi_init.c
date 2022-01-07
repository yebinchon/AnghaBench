
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SPI_BYTE_ORDER_HIGH_TO_LOW ;
 int SPI_CLK_CNTDIV ;
 int SPI_CLK_PREDIV ;
 int SPI_CLK_USE_DIV ;
 int SPI_CS_HOLD ;
 int SPI_CS_SETUP ;
 int SPI_FLASH_MODE ;
 int SPI_USER (int ) ;
 int spi_clock (int ,int ,int ) ;
 int spi_init_gpio (int ,int ) ;
 int spi_rx_byte_order (int ,int ) ;
 int spi_tx_byte_order (int ,int ) ;

void spi_init(uint8_t spi_no) {
    spi_init_gpio(spi_no, SPI_CLK_USE_DIV);
    spi_clock(spi_no, SPI_CLK_PREDIV, SPI_CLK_CNTDIV);
    spi_tx_byte_order(spi_no, SPI_BYTE_ORDER_HIGH_TO_LOW);
    spi_rx_byte_order(spi_no, SPI_BYTE_ORDER_HIGH_TO_LOW);

    SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_CS_SETUP|SPI_CS_HOLD);
    CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_FLASH_MODE);
}
