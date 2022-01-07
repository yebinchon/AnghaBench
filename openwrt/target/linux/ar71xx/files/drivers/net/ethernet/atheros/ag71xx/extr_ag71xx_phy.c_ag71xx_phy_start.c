
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx_platform_data {scalar_t__ switch_data; scalar_t__ mii_bus_dev; } ;
struct ag71xx {int link; scalar_t__ phy_dev; } ;


 int ag71xx_ar7240_start (struct ag71xx*) ;
 struct ag71xx_platform_data* ag71xx_get_pdata (struct ag71xx*) ;
 int ag71xx_link_adjust (struct ag71xx*) ;
 int phy_start (scalar_t__) ;

void ag71xx_phy_start(struct ag71xx *ag)
{
 struct ag71xx_platform_data *pdata = ag71xx_get_pdata(ag);

 if (ag->phy_dev) {
  phy_start(ag->phy_dev);
 } else if (pdata->mii_bus_dev && pdata->switch_data) {
  ag71xx_ar7240_start(ag);
 } else {
  ag->link = 1;
  ag71xx_link_adjust(ag);
 }
}
