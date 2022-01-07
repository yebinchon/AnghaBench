
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct adm6996_priv {scalar_t__ model; int dev; } ;


 scalar_t__ ADM6996L ;
 scalar_t__ ADM6996M ;
 struct adm6996_priv* platform_get_drvdata (struct platform_device*) ;
 int unregister_switch (int *) ;

__attribute__((used)) static int adm6996_gpio_remove(struct platform_device *pdev)
{
 struct adm6996_priv *priv = platform_get_drvdata(pdev);

 if (priv && (priv->model == ADM6996M || priv->model == ADM6996L))
  unregister_switch(&priv->dev);

 return 0;
}
