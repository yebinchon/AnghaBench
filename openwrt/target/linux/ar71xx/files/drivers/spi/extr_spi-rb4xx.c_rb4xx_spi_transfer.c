
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_message {TYPE_1__* spi; int queue; int status; scalar_t__ actual_length; } ;
struct spi_device {int master; } ;
struct rb4xx_spi {scalar_t__ cs_wait; int lock; scalar_t__ busy; int queue; } ;
struct TYPE_2__ {scalar_t__ chip_select; } ;


 int EINPROGRESS ;
 int list_add_tail (int *,int *) ;
 int rb4xx_spi_process_queue_locked (struct rb4xx_spi*,unsigned long*) ;
 struct rb4xx_spi* spi_master_get_devdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rb4xx_spi_transfer(struct spi_device *spi,
         struct spi_message *m)
{
 struct rb4xx_spi *rbspi = spi_master_get_devdata(spi->master);
 unsigned long flags;

 m->actual_length = 0;
 m->status = -EINPROGRESS;

 spin_lock_irqsave(&rbspi->lock, flags);
 list_add_tail(&m->queue, &rbspi->queue);
 if (rbspi->busy ||
     (rbspi->cs_wait >= 0 && rbspi->cs_wait != m->spi->chip_select)) {

  spin_unlock_irqrestore(&rbspi->lock, flags);
  return 0;
 }


 rb4xx_spi_process_queue_locked(rbspi, &flags);
 spin_unlock_irqrestore(&rbspi->lock, flags);

 return 0;
}
