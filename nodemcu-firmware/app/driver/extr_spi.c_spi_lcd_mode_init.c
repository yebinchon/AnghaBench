
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int PERIPHS_IO_MUX ;
 int PERIPHS_IO_MUX_MTCK_U ;
 int PERIPHS_IO_MUX_MTDI_U ;
 int PERIPHS_IO_MUX_MTDO_U ;
 int PERIPHS_IO_MUX_MTMS_U ;
 int PERIPHS_IO_MUX_SD_CLK_U ;
 int PERIPHS_IO_MUX_SD_CMD_U ;
 int PERIPHS_IO_MUX_SD_DATA0_U ;
 int PERIPHS_IO_MUX_SD_DATA1_U ;
 int PIN_FUNC_SELECT (int ,int) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SPI_CLKCNT_H ;
 int SPI_CLKCNT_H_S ;
 int SPI_CLKCNT_L ;
 int SPI_CLKCNT_L_S ;
 int SPI_CLKCNT_N ;
 int SPI_CLKCNT_N_S ;
 int SPI_CLKDIV_PRE ;
 int SPI_CLKDIV_PRE_S ;
 int SPI_CLOCK (int) ;
 int SPI_CS_HOLD ;
 int SPI_CS_SETUP ;
 int SPI_FLASH_MODE ;
 int SPI_HSPI ;
 int SPI_SPI ;
 int SPI_USER (int) ;
 int SPI_USR_COMMAND ;
 int WRITE_PERI_REG (int ,int) ;

void spi_lcd_mode_init(uint8 spi_no)
{
 uint32 regvalue;
 if(spi_no>1) return;


 if(spi_no==SPI_SPI){
  WRITE_PERI_REG(PERIPHS_IO_MUX, 0x005);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CLK_U, 1);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CMD_U, 1);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA0_U, 1);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA1_U, 1);
 }else if(spi_no==SPI_HSPI){
  WRITE_PERI_REG(PERIPHS_IO_MUX, 0x105);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDI_U, 2);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, 2);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, 2);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDO_U, 2);
 }

 SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_CS_SETUP|SPI_CS_HOLD|SPI_USR_COMMAND);
 CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_FLASH_MODE);

 WRITE_PERI_REG(SPI_CLOCK(spi_no),
     ((1&SPI_CLKDIV_PRE)<<SPI_CLKDIV_PRE_S)|
     ((3&SPI_CLKCNT_N)<<SPI_CLKCNT_N_S)|
     ((1&SPI_CLKCNT_H)<<SPI_CLKCNT_H_S)|
     ((3&SPI_CLKCNT_L)<<SPI_CLKCNT_L_S));

}
