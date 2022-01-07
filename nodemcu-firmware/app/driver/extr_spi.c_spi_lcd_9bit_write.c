
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int BIT15 ;
 int READ_PERI_REG (int ) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SPI_CMD (int) ;
 int SPI_USER2 (int) ;
 int SPI_USR ;
 int SPI_USR_COMMAND_BITLEN ;
 int SPI_USR_COMMAND_BITLEN_S ;
 int WRITE_PERI_REG (int ,int) ;

void spi_lcd_9bit_write(uint8 spi_no,uint8 high_bit,uint8 low_8bit)
{
 uint32 regvalue;
 uint8 bytetemp;
 if(spi_no>1) return;

 if(high_bit) bytetemp=(low_8bit>>1)|0x80;
 else bytetemp=(low_8bit>>1)&0x7f;

 regvalue= ((8&SPI_USR_COMMAND_BITLEN)<<SPI_USR_COMMAND_BITLEN_S)|((uint32)bytetemp);
 if(low_8bit&0x01) regvalue|=BIT15;
 while(READ_PERI_REG(SPI_CMD(spi_no))&SPI_USR);
 WRITE_PERI_REG(SPI_USER2(spi_no), regvalue);
 SET_PERI_REG_MASK(SPI_CMD(spi_no), SPI_USR);
}
