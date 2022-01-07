
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ag71xx_mdio {int mdio_base; int mii_bus; } ;


 int iounmap (int ) ;
 int kfree (struct ag71xx_mdio*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct ag71xx_mdio* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int ag71xx_mdio_remove(struct platform_device *pdev)
{
 struct ag71xx_mdio *am = platform_get_drvdata(pdev);

 if (am) {
  mdiobus_unregister(am->mii_bus);
  mdiobus_free(am->mii_bus);
  iounmap(am->mdio_base);
  kfree(am);
  platform_set_drvdata(pdev, ((void*)0));
 }

 return 0;
}
