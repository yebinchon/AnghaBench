
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsc7385_data {int dummy; } ;
struct spi_device {int dev; } ;


 struct vsc7385_data* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct vsc7385_data*) ;

__attribute__((used)) static int vsc7385_remove(struct spi_device *spi)
{
 struct vsc7385_data *vsc;

 vsc = dev_get_drvdata(&spi->dev);
 dev_set_drvdata(&spi->dev, ((void*)0));
 kfree(vsc);

 return 0;
}
