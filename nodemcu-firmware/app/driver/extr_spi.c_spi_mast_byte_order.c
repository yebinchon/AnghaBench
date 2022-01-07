
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int CLEAR_PERI_REG_MASK (int ,int) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SPI_ORDER_LSB ;
 int SPI_ORDER_MSB ;
 int SPI_RD_BYTE_ORDER ;
 int SPI_USER (int) ;
 int SPI_WR_BYTE_ORDER ;

void spi_mast_byte_order(uint8 spi_no, uint8 order)
{
    if(spi_no > 1)
        return;

    if (order == SPI_ORDER_MSB) {
 SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_RD_BYTE_ORDER | SPI_WR_BYTE_ORDER);
    } else if (order == SPI_ORDER_LSB) {
 CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_RD_BYTE_ORDER | SPI_WR_BYTE_ORDER);
    }
}
