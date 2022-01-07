
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct ag71xx {TYPE_2__* pdev; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;
struct TYPE_4__ {int name; } ;


 int AG71XX_DRV_VERSION ;
 int dev_name (TYPE_3__*) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ag71xx_ethtool_get_drvinfo(struct net_device *dev,
           struct ethtool_drvinfo *info)
{
 struct ag71xx *ag = netdev_priv(dev);

 strcpy(info->driver, ag->pdev->dev.driver->name);
 strcpy(info->version, AG71XX_DRV_VERSION);
 strcpy(info->bus_info, dev_name(&ag->pdev->dev));
}
