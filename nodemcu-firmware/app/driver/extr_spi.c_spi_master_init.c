
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32_t ;
typedef int uint32 ;


 int CLEAR_PERI_REG_MASK (int ,int) ;
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
 int SPI_CK_OUT_EDGE ;
 int SPI_CS_HOLD ;
 int SPI_CS_SETUP ;
 int SPI_CTRL (int) ;
 int SPI_DIO_MODE ;
 int SPI_DOUT_MODE ;
 int SPI_FLASH_MODE ;
 int SPI_HSPI ;
 int SPI_IDLE_EDGE ;
 int SPI_PIN (int) ;
 int SPI_QIO_MODE ;
 int SPI_QOUT_MODE ;
 int SPI_RD_BYTE_ORDER ;
 int SPI_SPI ;
 int SPI_USER (int) ;
 int SPI_USR_ADDR ;
 int SPI_USR_COMMAND ;
 int SPI_USR_DUMMY ;
 int SPI_USR_MISO ;
 int SPI_WR_BYTE_ORDER ;
 int spi_set_clkdiv (int,int ) ;

void spi_master_init(uint8 spi_no, unsigned cpol, unsigned cpha, uint32_t clock_div)
{
 uint32 regvalue;

 if(spi_no>1) return;

 SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_CS_SETUP|SPI_CS_HOLD|SPI_RD_BYTE_ORDER|SPI_WR_BYTE_ORDER);



 if (cpol == 1) {
  SET_PERI_REG_MASK(SPI_PIN(spi_no), SPI_IDLE_EDGE);
 } else {
  CLEAR_PERI_REG_MASK(SPI_PIN(spi_no), SPI_IDLE_EDGE);
 }


 if (cpha == cpol) {


  CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_CK_OUT_EDGE);
 } else {


  SET_PERI_REG_MASK(SPI_USER(spi_no), SPI_CK_OUT_EDGE);
 }

 CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_FLASH_MODE|SPI_USR_MISO|SPI_USR_ADDR|SPI_USR_COMMAND|SPI_USR_DUMMY);


 CLEAR_PERI_REG_MASK(SPI_CTRL(spi_no), SPI_QIO_MODE|SPI_DIO_MODE|SPI_DOUT_MODE|SPI_QOUT_MODE);

 spi_set_clkdiv(spi_no, clock_div);

 if(spi_no==SPI_SPI){
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CLK_U, 1);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CMD_U, 1);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA0_U, 1);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA1_U, 1);
 }
 else if(spi_no==SPI_HSPI){
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDI_U, 2);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, 2);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, 2);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDO_U, 2);
 }
}
