
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 scalar_t__ HSPI ;
 int PERIPHS_IO_MUX ;
 int PERIPHS_IO_MUX_MTCK_U ;
 int PERIPHS_IO_MUX_MTDI_U ;
 int PERIPHS_IO_MUX_MTMS_U ;
 int PERIPHS_IO_MUX_SD_CLK_U ;
 int PERIPHS_IO_MUX_SD_CMD_U ;
 int PERIPHS_IO_MUX_SD_DATA0_U ;
 int PERIPHS_IO_MUX_SD_DATA1_U ;
 int PIN_FUNC_SELECT (int ,int) ;
 scalar_t__ SPI ;
 int WRITE_PERI_REG (int ,int) ;

void spi_init_gpio(uint8_t spi_no, uint8_t sysclk_as_spiclk) {
    uint32_t clock_div_flag = 0;
    if (sysclk_as_spiclk) {
        clock_div_flag = 0x0001;
    }
    if (spi_no == SPI) {

        WRITE_PERI_REG(PERIPHS_IO_MUX, 0x005 | (clock_div_flag<<8));
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CLK_U, 1);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_CMD_U, 1);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA0_U, 1);
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_SD_DATA1_U, 1);
    } else if (spi_no == HSPI) {

        WRITE_PERI_REG(PERIPHS_IO_MUX, 0x105 | (clock_div_flag<<9));

        PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDI_U, 2);

        PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, 2);

        PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, 2);



    }
}
