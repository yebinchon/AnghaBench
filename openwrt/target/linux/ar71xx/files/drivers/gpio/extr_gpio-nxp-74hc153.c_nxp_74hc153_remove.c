
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nxp_74hc153_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nxp_74hc153_platform_data {int gpio_pin_s0; int gpio_pin_s1; int gpio_pin_1y; int gpio_pin_2y; } ;
struct nxp_74hc153_chip {int gpio_chip; } ;


 int gpio_free (int ) ;
 int gpiochip_remove (int *) ;
 int kfree (struct nxp_74hc153_chip*) ;
 struct nxp_74hc153_chip* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int nxp_74hc153_remove(struct platform_device *pdev)
{
 struct nxp_74hc153_chip *nxp = platform_get_drvdata(pdev);
 struct nxp_74hc153_platform_data *pdata = pdev->dev.platform_data;

 if (nxp) {
  gpiochip_remove(&nxp->gpio_chip);
  gpio_free(pdata->gpio_pin_2y);
  gpio_free(pdata->gpio_pin_1y);
  gpio_free(pdata->gpio_pin_s1);
  gpio_free(pdata->gpio_pin_s0);

  kfree(nxp);
  platform_set_drvdata(pdev, ((void*)0));
 }

 return 0;
}
