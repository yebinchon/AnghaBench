
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int chip_select; } ;


 unsigned int AR71XX_SPI_IOC_CS0 ;
 unsigned int AR71XX_SPI_IOC_CS1 ;
 int SPI_CS_HIGH ;
 unsigned int spi_clk_low ;

__attribute__((used)) static inline void do_spi_init(struct spi_device *spi)
{
 unsigned cs = AR71XX_SPI_IOC_CS0 | AR71XX_SPI_IOC_CS1;

 if (!(spi->mode & SPI_CS_HIGH))
  cs ^= (spi->chip_select == 2) ? AR71XX_SPI_IOC_CS1 :
      AR71XX_SPI_IOC_CS0;

 spi_clk_low = cs;
}
