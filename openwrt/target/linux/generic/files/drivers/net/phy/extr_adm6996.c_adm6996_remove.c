
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct adm6996_priv {scalar_t__ model; int dev; } ;


 scalar_t__ ADM6996L ;
 scalar_t__ ADM6996M ;
 struct adm6996_priv* phy_to_adm (struct phy_device*) ;
 int unregister_switch (int *) ;

__attribute__((used)) static void adm6996_remove(struct phy_device *pdev)
{
 struct adm6996_priv *priv = phy_to_adm(pdev);

 if (priv && (priv->model == ADM6996M || priv->model == ADM6996L))
  unregister_switch(&priv->dev);
}
