
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ag71xx_platform_data {scalar_t__ phy_mask; scalar_t__ switch_data; TYPE_4__* mii_bus_dev; } ;
struct ag71xx {TYPE_2__* mii_bus; TYPE_1__* pdev; } ;
struct TYPE_8__ {int * bus; } ;
struct TYPE_7__ {int mdio_lock; int (* reset ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int dev; } ;


 int ENODEV ;
 int ag71xx_ar7240_init (struct ag71xx*) ;
 struct ag71xx_platform_data* ag71xx_get_pdata (struct ag71xx*) ;
 int ag71xx_phy_connect_fixed (struct ag71xx*) ;
 int ag71xx_phy_connect_multi (struct ag71xx*) ;
 int dev_err (int *,char*,int ) ;
 int dev_name (TYPE_4__*) ;
 TYPE_2__* dev_to_mii_bus (TYPE_4__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*) ;

int ag71xx_phy_connect(struct ag71xx *ag)
{
 struct ag71xx_platform_data *pdata = ag71xx_get_pdata(ag);

 if (pdata->mii_bus_dev == ((void*)0) ||
     pdata->mii_bus_dev->bus == ((void*)0) )
  return ag71xx_phy_connect_fixed(ag);

 ag->mii_bus = dev_to_mii_bus(pdata->mii_bus_dev);
 if (ag->mii_bus == ((void*)0)) {
  dev_err(&ag->pdev->dev, "unable to find MII bus on device '%s'\n",
      dev_name(pdata->mii_bus_dev));
  return -ENODEV;
 }


 if (ag->mii_bus->reset) {
  mutex_lock(&ag->mii_bus->mdio_lock);
  ag->mii_bus->reset(ag->mii_bus);
  mutex_unlock(&ag->mii_bus->mdio_lock);
 }

 if (pdata->switch_data)
  return ag71xx_ar7240_init(ag);

 if (pdata->phy_mask)
  return ag71xx_phy_connect_multi(ag);

 return ag71xx_phy_connect_fixed(ag);
}
