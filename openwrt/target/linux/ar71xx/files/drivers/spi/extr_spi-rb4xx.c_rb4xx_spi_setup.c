
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int bits_per_word; int chip_select; int dev; int master; } ;
struct rb4xx_spi {int cs_wait; int lock; int busy; } ;


 int EINVAL ;
 int SPI_CS_HIGH ;
 int SPI_TX_DUAL ;
 int dev_err (int *,char*,unsigned int) ;
 int rb4xx_spi_process_queue_locked (struct rb4xx_spi*,unsigned long*) ;
 struct rb4xx_spi* spi_master_get_devdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rb4xx_spi_setup(struct spi_device *spi)
{
 struct rb4xx_spi *rbspi = spi_master_get_devdata(spi->master);
 unsigned long flags;

 if (spi->mode & ~(SPI_CS_HIGH | SPI_TX_DUAL)) {
  dev_err(&spi->dev, "mode %x not supported\n",
   (unsigned) spi->mode);
  return -EINVAL;
 }

 if (spi->bits_per_word != 8 && spi->bits_per_word != 0) {
  dev_err(&spi->dev, "bits_per_word %u not supported\n",
   (unsigned) spi->bits_per_word);
  return -EINVAL;
 }

 spin_lock_irqsave(&rbspi->lock, flags);
 if (rbspi->cs_wait == spi->chip_select && !rbspi->busy) {
  rbspi->cs_wait = -1;
  rb4xx_spi_process_queue_locked(rbspi, &flags);
 }
 spin_unlock_irqrestore(&rbspi->lock, flags);

 return 0;
}
