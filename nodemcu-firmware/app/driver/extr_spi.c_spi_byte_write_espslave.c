
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int CLEAR_PERI_REG_MASK (int ,int) ;
 int READ_PERI_REG (int ) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SPI_CMD (int) ;
 int SPI_USER (int) ;
 int SPI_USER2 (int) ;
 int SPI_USR ;
 int SPI_USR_ADDR ;
 int SPI_USR_COMMAND_BITLEN ;
 int SPI_USR_COMMAND_BITLEN_S ;
 int SPI_USR_DUMMY ;
 int SPI_USR_MISO ;
 int SPI_USR_MOSI ;
 int SPI_W0 (int) ;
 int WRITE_PERI_REG (int ,int) ;

void spi_byte_write_espslave(uint8 spi_no,uint8 data)
 {
 uint32 regvalue;

 if(spi_no>1) return;

 while(READ_PERI_REG(SPI_CMD(spi_no))&SPI_USR);
 SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_MOSI);
 CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_USR_MISO|SPI_USR_ADDR|SPI_USR_DUMMY);




 WRITE_PERI_REG(SPI_USER2(spi_no),
     ((7&SPI_USR_COMMAND_BITLEN)<<SPI_USR_COMMAND_BITLEN_S)|4);
 WRITE_PERI_REG(SPI_W0(spi_no), (uint32)(data));
 SET_PERI_REG_MASK(SPI_CMD(spi_no), SPI_USR);
 }
