
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct rb4xx_cpld_platform_data* platform_data; } ;
struct spi_device {int mode; int bits_per_word; TYPE_1__ dev; } ;
struct rb4xx_cpld_platform_data {int gpio_base; } ;
struct rb4xx_cpld {int spi; int lock; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_MODE_0 ;
 int SPI_TX_DUAL ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_set_drvdata (TYPE_1__*,struct rb4xx_cpld*) ;
 int kfree (struct rb4xx_cpld*) ;
 struct rb4xx_cpld* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct rb4xx_cpld* rb4xx_cpld ;
 int rb4xx_cpld_gpio_init (struct rb4xx_cpld*,int ) ;
 int spi_dev_get (struct spi_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int rb4xx_cpld_probe(struct spi_device *spi)
{
 struct rb4xx_cpld *cpld;
 struct rb4xx_cpld_platform_data *pdata;
 int err;

 pdata = spi->dev.platform_data;
 if (!pdata) {
  dev_dbg(&spi->dev, "no platform data\n");
  return -EINVAL;
 }

 cpld = kzalloc(sizeof(*cpld), GFP_KERNEL);
 if (!cpld) {
  dev_err(&spi->dev, "no memory for private data\n");
  return -ENOMEM;
 }

 mutex_init(&cpld->lock);
 cpld->spi = spi_dev_get(spi);
 dev_set_drvdata(&spi->dev, cpld);

 spi->mode = SPI_MODE_0 | SPI_TX_DUAL;
 spi->bits_per_word = 8;
 err = spi_setup(spi);
 if (err) {
  dev_err(&spi->dev, "spi_setup failed, err=%d\n", err);
  goto err_drvdata;
 }

 err = rb4xx_cpld_gpio_init(cpld, pdata->gpio_base);
 if (err)
  goto err_drvdata;

 rb4xx_cpld = cpld;

 return 0;

err_drvdata:
 dev_set_drvdata(&spi->dev, ((void*)0));
 kfree(cpld);

 return err;
}
