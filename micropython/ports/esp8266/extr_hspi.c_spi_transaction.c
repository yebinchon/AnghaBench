
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int CLEAR_PERI_REG_MASK (int ,int) ;
 int READ_PERI_REG (int ) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SPI_ADDR (int) ;
 int SPI_CMD (int) ;
 int SPI_DOUTDIN ;
 int SPI_RD_BYTE_ORDER ;
 int SPI_USER (int) ;
 int SPI_USER1 (int) ;
 int SPI_USER2 (int) ;
 int SPI_USR ;
 int SPI_USR_ADDR ;
 int SPI_USR_ADDR_BITLEN ;
 int SPI_USR_ADDR_BITLEN_S ;
 int SPI_USR_COMMAND ;
 int SPI_USR_COMMAND_BITLEN ;
 int SPI_USR_COMMAND_BITLEN_S ;
 int SPI_USR_COMMAND_VALUE ;
 int SPI_USR_DUMMY ;
 int SPI_USR_DUMMY_CYCLELEN ;
 int SPI_USR_DUMMY_CYCLELEN_S ;
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

uint32_t spi_transaction(uint8_t spi_no, uint8_t cmd_bits, uint16_t cmd_data,
                         uint32_t addr_bits, uint32_t addr_data,
                         uint32_t dout_bits, uint32_t dout_data,
                         uint32_t din_bits, uint32_t dummy_bits) {
    while (spi_busy(spi_no)) {};



    CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_MOSI | SPI_USR_MISO |
                        SPI_USR_COMMAND | SPI_USR_ADDR | SPI_USR_DUMMY);




    if (din_bits) {
        if (dout_bits) {
            SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_DOUTDIN);
        } else {
            SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_MISO);
        }
    }
    if (dummy_bits) {
        SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_DUMMY);
    }


    WRITE_PERI_REG(SPI_USER1(spi_no),

        ((addr_bits - 1) & SPI_USR_ADDR_BITLEN) << SPI_USR_ADDR_BITLEN_S |

        ((dout_bits - 1) & SPI_USR_MOSI_BITLEN) << SPI_USR_MOSI_BITLEN_S |

        ((din_bits - 1) & SPI_USR_MISO_BITLEN) << SPI_USR_MISO_BITLEN_S |

        ((dummy_bits - 1) & SPI_USR_DUMMY_CYCLELEN) << SPI_USR_DUMMY_CYCLELEN_S);


    if (cmd_bits) {

        SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_COMMAND);

        uint16_t command = cmd_data << (16-cmd_bits);

        command = ((command>>8)&0xff) | ((command<<8)&0xff00);
        WRITE_PERI_REG(SPI_USER2(spi_no), (
            (((cmd_bits - 1) & SPI_USR_COMMAND_BITLEN) << SPI_USR_COMMAND_BITLEN_S) |
            (command & SPI_USR_COMMAND_VALUE)
        ));
    }


    if (addr_bits) {

        SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_ADDR);

        WRITE_PERI_REG(SPI_ADDR(spi_no), addr_data << (32 - addr_bits));
    }


    if (dout_bits) {

        SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_MOSI);

    if (READ_PERI_REG(SPI_USER(spi_no))&SPI_WR_BYTE_ORDER) {
        WRITE_PERI_REG(SPI_W0(spi_no), dout_data << (32 - dout_bits));
    } else {
        uint8_t dout_extra_bits = dout_bits%8;

        if (dout_extra_bits) {
            WRITE_PERI_REG(SPI_W0(spi_no), (
                (0xFFFFFFFF << (dout_bits - dout_extra_bits) & dout_data)
                    << (8-dout_extra_bits) |
                ((0xFFFFFFFF >> (32 - (dout_bits - dout_extra_bits)))
                    & dout_data)
            ));
        } else {
            WRITE_PERI_REG(SPI_W0(spi_no), dout_data);
        }
    }
}


    SET_PERI_REG_MASK(SPI_CMD(spi_no), SPI_USR);


    if (din_bits) {
        while (spi_busy(spi_no)) {};
        if (READ_PERI_REG(SPI_USER(spi_no))&SPI_RD_BYTE_ORDER) {

            return READ_PERI_REG(SPI_W0(spi_no)) >> (32 - din_bits);
        } else {


            return READ_PERI_REG(SPI_W0(spi_no));
        }
        return 0;
    }


    return 1;
}
