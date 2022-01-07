
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;


 int BIT19 ;
 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int ETS_SPI_INTR_ATTACH (int ,int *) ;
 int ETS_SPI_INTR_ENABLE () ;
 int PERIPHS_IO_MUX_MTCK_U ;
 int PERIPHS_IO_MUX_MTDI_U ;
 int PERIPHS_IO_MUX_MTDO_U ;
 int PERIPHS_IO_MUX_MTMS_U ;
 int PERIPHS_IO_MUX_SD_CLK_U ;
 int PERIPHS_IO_MUX_SD_CMD_U ;
 int PERIPHS_IO_MUX_SD_DATA0_U ;
 int PERIPHS_IO_MUX_SD_DATA1_U ;
 int PIN_FUNC_SELECT (int ,int) ;
 int READ_PERI_REG (int ) ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SPI_CLOCK (int) ;
 int SPI_CMD (int) ;
 int SPI_CTRL2 (int) ;
 int SPI_FLASH_MODE ;
 int SPI_HSPI ;
 int SPI_MOSI_DELAY_NUM ;
 int SPI_MOSI_DELAY_NUM_S ;
 int SPI_PIN (int) ;
 int SPI_SLAVE (int) ;
 int SPI_SLAVE1 (int) ;
 int SPI_SLAVE_MODE ;
 int SPI_SLV_BUF_BITLEN ;
 int SPI_SLV_BUF_BITLEN_S ;
 int SPI_SLV_RD_ADDR_BITLEN ;
 int SPI_SLV_RD_ADDR_BITLEN_S ;
 int SPI_SLV_RD_BUF_DONE_EN ;
 int SPI_SLV_RD_STA_DONE_EN ;
 int SPI_SLV_STATUS_BITLEN ;
 int SPI_SLV_STATUS_BITLEN_S ;
 int SPI_SLV_WR_ADDR_BITLEN ;
 int SPI_SLV_WR_ADDR_BITLEN_S ;
 int SPI_SLV_WR_BUF_DONE_EN ;
 int SPI_SLV_WR_RD_BUF_EN ;
 int SPI_SLV_WR_STA_DONE_EN ;
 int SPI_SPI ;
 int SPI_TRANS_DONE_EN ;
 int SPI_USER (int) ;
 int SPI_USER2 (int) ;
 int SPI_USR ;
 int SPI_USR_COMMAND_BITLEN ;
 int SPI_USR_COMMAND_BITLEN_S ;
 int SPI_USR_MISO_HIGHPART ;
 int WRITE_PERI_REG (int ,int) ;
 int os_printf (char*,int ) ;
 int spi_slave_isr_handler ;

void spi_slave_init(uint8 spi_no)
{
    uint32 regvalue;
    if(spi_no>1)
        return;





    if(spi_no==SPI_SPI){
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CLK_U, 1);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CMD_U, 1);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA0_U, 1);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA1_U, 1);
    }else if(spi_no==SPI_HSPI){
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDI_U, 2);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, 2);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, 2);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDO_U, 2);
    }




    SET_PERI_REG_MASK( SPI_SLAVE(spi_no),
          SPI_SLAVE_MODE|SPI_SLV_WR_RD_BUF_EN|
                                          SPI_SLV_WR_BUF_DONE_EN|SPI_SLV_RD_BUF_DONE_EN|
                                          SPI_SLV_WR_STA_DONE_EN|SPI_SLV_RD_STA_DONE_EN|
                                          SPI_TRANS_DONE_EN);



    CLEAR_PERI_REG_MASK(SPI_USER(spi_no), SPI_FLASH_MODE);
    SET_PERI_REG_MASK(SPI_USER(spi_no),SPI_USR_MISO_HIGHPART);




    SET_PERI_REG_MASK(SPI_CTRL2(spi_no),(0x2&SPI_MOSI_DELAY_NUM)<<SPI_MOSI_DELAY_NUM_S) ;
    os_printf("SPI_CTRL2 is %08x\n",READ_PERI_REG(SPI_CTRL2(spi_no)));
    WRITE_PERI_REG(SPI_CLOCK(spi_no), 0);
    WRITE_PERI_REG(SPI_USER2(spi_no), (0x7&SPI_USR_COMMAND_BITLEN)<<SPI_USR_COMMAND_BITLEN_S);



    SET_PERI_REG_MASK(SPI_SLAVE1(spi_no), ((0xff&SPI_SLV_BUF_BITLEN)<< SPI_SLV_BUF_BITLEN_S)|
                                                                                        ((0x7&SPI_SLV_STATUS_BITLEN)<<SPI_SLV_STATUS_BITLEN_S)|
                                                                                       ((0x7&SPI_SLV_WR_ADDR_BITLEN)<<SPI_SLV_WR_ADDR_BITLEN_S)|
                                                                                       ((0x7&SPI_SLV_RD_ADDR_BITLEN)<<SPI_SLV_RD_ADDR_BITLEN_S));

    SET_PERI_REG_MASK(SPI_PIN(spi_no),BIT19);


    SET_PERI_REG_MASK(SPI_CMD(spi_no),SPI_USR);

    ETS_SPI_INTR_ATTACH(spi_slave_isr_handler,((void*)0));

    ETS_SPI_INTR_ENABLE();
}
