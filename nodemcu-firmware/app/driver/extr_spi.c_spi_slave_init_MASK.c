#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  uint32 ;

/* Variables and functions */
 int BIT19 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTCK_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTDI_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTDO_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_MTMS_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_CLK_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_CMD_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA0_U ; 
 int /*<<< orphan*/  PERIPHS_IO_MUX_SD_DATA1_U ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  SPI_FLASH_MODE ; 
 int SPI_HSPI ; 
 int SPI_MOSI_DELAY_NUM ; 
 int SPI_MOSI_DELAY_NUM_S ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
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
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int SPI_USR ; 
 int SPI_USR_COMMAND_BITLEN ; 
 int SPI_USR_COMMAND_BITLEN_S ; 
 int SPI_USR_MISO_HIGHPART ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_slave_isr_handler ; 

void FUNC16(uint8 spi_no)
{
    uint32 regvalue;
    if(spi_no>1)
        return; //handle invalid input number

    //clear bit9,bit8 of reg PERIPHS_IO_MUX
    //bit9 should be cleared when HSPI clock doesn't equal CPU clock
    //bit8 should be cleared when SPI clock doesn't equal CPU clock
    ////WRITE_PERI_REG(PERIPHS_IO_MUX, 0x105); //clear bit9//TEST
    if(spi_no==SPI_SPI){
        FUNC3(PERIPHS_IO_MUX_SD_CLK_U, 1);//configure io to spi mode
        FUNC3(PERIPHS_IO_MUX_SD_CMD_U, 1);//configure io to spi mode
        FUNC3(PERIPHS_IO_MUX_SD_DATA0_U, 1);//configure io to spi mode
        FUNC3(PERIPHS_IO_MUX_SD_DATA1_U, 1);//configure io to spi mode
    }else if(spi_no==SPI_HSPI){
        FUNC3(PERIPHS_IO_MUX_MTDI_U, 2);//configure io to spi mode
        FUNC3(PERIPHS_IO_MUX_MTCK_U, 2);//configure io to spi mode
        FUNC3(PERIPHS_IO_MUX_MTMS_U, 2);//configure io to spi mode
        FUNC3(PERIPHS_IO_MUX_MTDO_U, 2);//configure io to spi mode
    }

    //regvalue=READ_PERI_REG(SPI_FLASH_SLAVE(spi_no));
    //slave mode,slave use buffers which are register "SPI_FLASH_C0~C15", enable trans done isr
    //set bit 30 bit 29 bit9,bit9 is trans done isr mask
    FUNC5(	FUNC10(spi_no),
    						SPI_SLAVE_MODE|SPI_SLV_WR_RD_BUF_EN|
                                         	SPI_SLV_WR_BUF_DONE_EN|SPI_SLV_RD_BUF_DONE_EN|
                                         	SPI_SLV_WR_STA_DONE_EN|SPI_SLV_RD_STA_DONE_EN|
                                         	SPI_TRANS_DONE_EN);
    //disable general trans intr
    //CLEAR_PERI_REG_MASK(SPI_SLAVE(spi_no),SPI_TRANS_DONE_EN);

    FUNC0(FUNC12(spi_no), SPI_FLASH_MODE);//disable flash operation mode
    FUNC5(FUNC12(spi_no),SPI_USR_MISO_HIGHPART);//SLAVE SEND DATA BUFFER IN C8-C15


//////**************RUN WHEN SLAVE RECIEVE*******************///////
   //tow lines below is to configure spi timing.
    FUNC5(FUNC8(spi_no),(0x2&SPI_MOSI_DELAY_NUM)<<SPI_MOSI_DELAY_NUM_S) ;//delay num
    FUNC15("SPI_CTRL2 is %08x\n",FUNC4(FUNC8(spi_no)));
    FUNC14(FUNC6(spi_no), 0);



/////***************************************************//////

    //set 8 bit slave command length, because slave must have at least one bit addr,
    //8 bit slave+8bit addr, so master device first 2 bytes can be regarded as a command
    //and the  following bytes are datas,
    //32 bytes input wil be stored in SPI_FLASH_C0-C7
    //32 bytes output data should be set to SPI_FLASH_C8-C15
    FUNC14(FUNC13(spi_no), (0x7&SPI_USR_COMMAND_BITLEN)<<SPI_USR_COMMAND_BITLEN_S); //0x70000000

    //set 8 bit slave recieve buffer length, the buffer is SPI_FLASH_C0-C7
    //set 8 bit slave status register, which is the low 8 bit of register "SPI_FLASH_STATUS"
    FUNC5(FUNC11(spi_no),  ((0xff&SPI_SLV_BUF_BITLEN)<< SPI_SLV_BUF_BITLEN_S)|
                                                                                        ((0x7&SPI_SLV_STATUS_BITLEN)<<SPI_SLV_STATUS_BITLEN_S)|
                                                                                       ((0x7&SPI_SLV_WR_ADDR_BITLEN)<<SPI_SLV_WR_ADDR_BITLEN_S)|
                                                                                       ((0x7&SPI_SLV_RD_ADDR_BITLEN)<<SPI_SLV_RD_ADDR_BITLEN_S));

    FUNC5(FUNC9(spi_no),BIT19);//BIT19

    //maybe enable slave transmission liston
    FUNC5(FUNC7(spi_no),SPI_USR);
    //register level2 isr function, which contains spi, hspi and i2s events
    FUNC1(spi_slave_isr_handler,NULL);
    //enable level2 isr, which contains spi, hspi and i2s events
    FUNC2();
}