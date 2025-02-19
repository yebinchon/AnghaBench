
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int txbuf ;
struct spi_device {int dummy; } ;
struct b53_device {struct spi_device* priv; } ;


 int B53_SPI_CMD_NORMAL ;
 int B53_SPI_CMD_WRITE ;
 int b53_prepare_reg_access (struct spi_device*,int) ;
 int spi_write (struct spi_device*,int*,int) ;

__attribute__((used)) static int b53_spi_write8(struct b53_device *dev, u8 page, u8 reg, u8 value)
{
 struct spi_device *spi = dev->priv;
 int ret;
 u8 txbuf[3];

 ret = b53_prepare_reg_access(spi, page);
 if (ret)
  return ret;

 txbuf[0] = B53_SPI_CMD_NORMAL | B53_SPI_CMD_WRITE;
 txbuf[1] = reg;
 txbuf[2] = value;

 return spi_write(spi, txbuf, sizeof(txbuf));
}
