
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ag71xx_mdio {int mii_bus; } ;


 int mdiobus_unregister (int ) ;
 struct ag71xx_mdio* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ag71xx_mdio_remove(struct platform_device *pdev)
{
 struct ag71xx_mdio *am = platform_get_drvdata(pdev);

 mdiobus_unregister(am->mii_bus);
 return 0;
}
