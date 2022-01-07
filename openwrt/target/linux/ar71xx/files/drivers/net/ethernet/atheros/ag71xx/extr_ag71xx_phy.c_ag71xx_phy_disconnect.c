
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx_platform_data {scalar_t__ switch_data; } ;
struct ag71xx {scalar_t__ phy_dev; } ;


 int ag71xx_ar7240_cleanup (struct ag71xx*) ;
 struct ag71xx_platform_data* ag71xx_get_pdata (struct ag71xx*) ;
 int phy_disconnect (scalar_t__) ;

void ag71xx_phy_disconnect(struct ag71xx *ag)
{
 struct ag71xx_platform_data *pdata = ag71xx_get_pdata(ag);

 if (pdata->switch_data)
  ag71xx_ar7240_cleanup(ag);
 else if (ag->phy_dev)
  phy_disconnect(ag->phy_dev);
}
