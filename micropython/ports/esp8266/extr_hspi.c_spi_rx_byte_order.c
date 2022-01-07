
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int SPI_RD_BYTE_ORDER ;
 int SPI_USER (scalar_t__) ;

void spi_rx_byte_order(uint8_t spi_no, uint8_t byte_order) {
    if (byte_order) {
        SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_RD_BYTE_ORDER);
    } else {
        CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_RD_BYTE_ORDER);
    }
}
