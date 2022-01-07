
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ag71xx_platform_data {int speed; int duplex; } ;
struct ag71xx {int speed; int duplex; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;



 struct ag71xx_platform_data* ag71xx_get_pdata (struct ag71xx*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int ag71xx_phy_connect_fixed(struct ag71xx *ag)
{
 struct device *dev = &ag->pdev->dev;
 struct ag71xx_platform_data *pdata = ag71xx_get_pdata(ag);
 int ret = 0;


 switch (pdata->speed) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  dev_err(dev, "invalid speed specified\n");
  ret = -EINVAL;
  break;
 }

 dev_dbg(dev, "using fixed link parameters\n");

 ag->duplex = pdata->duplex;
 ag->speed = pdata->speed;

 return ret;
}
