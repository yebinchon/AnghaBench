
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int HSPI ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int SPI_CK_I_EDGE ;
 int SPI_CK_OUT_EDGE ;
 int SPI_IDLE_EDGE ;
 int SPI_PIN (int ) ;
 int SPI_USER (int ) ;

void spi_mode(uint8_t spi_no, uint8_t spi_cpha, uint8_t spi_cpol) {
    if (spi_cpol) {
        SET_PERI_REG_MASK(SPI_PIN(HSPI), SPI_IDLE_EDGE);
    } else {
        CLEAR_PERI_REG_MASK(SPI_PIN(HSPI), SPI_IDLE_EDGE);
    }
    if (spi_cpha == spi_cpol) {


        CLEAR_PERI_REG_MASK(SPI_USER(HSPI), SPI_CK_OUT_EDGE);
        SET_PERI_REG_MASK(SPI_USER(HSPI), SPI_CK_I_EDGE);
    } else {


        SET_PERI_REG_MASK(SPI_USER(HSPI), SPI_CK_OUT_EDGE);
        CLEAR_PERI_REG_MASK(SPI_USER(HSPI), SPI_CK_I_EDGE);
    }
}
