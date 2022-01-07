
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CLEAR_PERI_REG_MASK (int ,int) ;
 int READ_PERI_REG (int ) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SPI_CMD (int) ;
 int SPI_USER (int) ;
 int SPI_USER1 (int) ;
 int SPI_USR ;
 int SPI_USR_ADDR ;
 int SPI_USR_COMMAND ;
 int SPI_USR_DUMMY ;
 int SPI_USR_MISO ;
 int SPI_USR_MISO_BITLEN ;
 int SPI_USR_MISO_BITLEN_S ;
 int SPI_USR_MOSI ;
 int SPI_USR_MOSI_BITLEN ;
 int SPI_USR_MOSI_BITLEN_S ;
 int SPI_W0 (int) ;
 int SPI_WR_BYTE_ORDER ;
 int WRITE_PERI_REG (int ,int) ;
 scalar_t__ spi_busy (int) ;

inline void spi_tx8fast(uint8_t spi_no, uint8_t dout_data) {
    while (spi_busy(spi_no)) {};



    CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_MOSI | SPI_USR_MISO |
                        SPI_USR_COMMAND | SPI_USR_ADDR | SPI_USR_DUMMY);


    WRITE_PERI_REG(SPI_USER1(spi_no),

        ((8 - 1) & SPI_USR_MOSI_BITLEN) << SPI_USR_MOSI_BITLEN_S |

        ((8 - 1) & SPI_USR_MISO_BITLEN) << SPI_USR_MISO_BITLEN_S);




    SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_MOSI);

    if (READ_PERI_REG(SPI_USER(spi_no)) & SPI_WR_BYTE_ORDER) {
        WRITE_PERI_REG(SPI_W0(spi_no), dout_data << (32 - 8));
    } else {
        WRITE_PERI_REG(SPI_W0(spi_no), dout_data);
    }


    SET_PERI_REG_MASK(SPI_CMD(spi_no), SPI_USR);
}
