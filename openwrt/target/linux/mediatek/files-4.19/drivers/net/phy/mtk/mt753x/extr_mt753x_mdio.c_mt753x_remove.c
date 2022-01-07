
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gsw_mt753x {scalar_t__ irq; scalar_t__ reset_pin; int irq_worker; } ;


 int cancel_work_sync (int *) ;
 int devm_gpio_free (int *,scalar_t__) ;
 int mt753x_remove_gsw (struct gsw_mt753x*) ;
 int mt753x_swconfig_destroy (struct gsw_mt753x*) ;
 struct gsw_mt753x* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int mt753x_remove(struct platform_device *pdev)
{
 struct gsw_mt753x *gsw = platform_get_drvdata(pdev);

 if (gsw->irq >= 0)
  cancel_work_sync(&gsw->irq_worker);

 if (gsw->reset_pin >= 0)
  devm_gpio_free(&pdev->dev, gsw->reset_pin);





 mt753x_remove_gsw(gsw);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
