
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int dummy; } ;


 int B53_CTRL_PAGE ;
 int B53_SWITCH_MODE ;
 int SM_SW_FWD_EN ;
 int b53_read8 (struct b53_device*,int ,int ,int *) ;
 int b53_write8 (struct b53_device*,int ,int ,int ) ;

void b53_set_forwarding(struct b53_device *dev, int enable)
{
 u8 mgmt;

 b53_read8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

 if (enable)
  mgmt |= SM_SW_FWD_EN;
 else
  mgmt &= ~SM_SW_FWD_EN;

 b53_write8(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, mgmt);
}
