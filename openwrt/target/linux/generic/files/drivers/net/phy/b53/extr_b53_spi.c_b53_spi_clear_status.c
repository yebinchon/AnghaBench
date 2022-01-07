
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int B53_SPI_CMD_SPIF ;
 int B53_SPI_STATUS ;
 int EIO ;
 int b53_spi_read_reg (struct spi_device*,int ,int*,int) ;
 int mdelay (int) ;

__attribute__((used)) static inline int b53_spi_clear_status(struct spi_device *spi)
{
 unsigned int i;
 u8 rxbuf;
 int ret;

 for (i = 0; i < 10; i++) {
  ret = b53_spi_read_reg(spi, B53_SPI_STATUS, &rxbuf, 1);
  if (ret)
   return ret;

  if (!(rxbuf & B53_SPI_CMD_SPIF))
   break;

  mdelay(1);
 }

 if (i == 10)
  return -EIO;

 return 0;
}
