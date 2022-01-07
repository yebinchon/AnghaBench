
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b53_device {int jumbo_size_reg; int jumbo_pm_reg; int enabled_ports; } ;


 int B53_JUMBO_PAGE ;
 int EINVAL ;
 int JMS_MAX_SIZE ;
 int JMS_MIN_SIZE ;
 int JPM_10_100_JUMBO_EN ;
 int b53_write16 (struct b53_device*,int ,int ,int ) ;
 int b53_write32 (struct b53_device*,int ,int ,int ) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;

__attribute__((used)) static int b53_set_jumbo(struct b53_device *dev, int enable, int allow_10_100)
{
 u32 port_mask = 0;
 u16 max_size = JMS_MIN_SIZE;

 if (is5325(dev) || is5365(dev))
  return -EINVAL;

 if (enable) {
  port_mask = dev->enabled_ports;
  max_size = JMS_MAX_SIZE;
  if (allow_10_100)
   port_mask |= JPM_10_100_JUMBO_EN;
 }

 b53_write32(dev, B53_JUMBO_PAGE, dev->jumbo_pm_reg, port_mask);
 return b53_write16(dev, B53_JUMBO_PAGE, dev->jumbo_size_reg, max_size);
}
