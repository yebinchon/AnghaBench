
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {TYPE_2__* attached_dev; struct b53_device* priv; } ;
struct TYPE_3__ {int alias; } ;
struct b53_device {int current_page; TYPE_1__ sw_dev; } ;
struct TYPE_4__ {int name; } ;



__attribute__((used)) static int b53_phy_config_init(struct phy_device *phydev)
{
 struct b53_device *dev = phydev->priv;


 dev->current_page = 0xff;

 dev->sw_dev.alias = phydev->attached_dev->name;

 return 0;
}
