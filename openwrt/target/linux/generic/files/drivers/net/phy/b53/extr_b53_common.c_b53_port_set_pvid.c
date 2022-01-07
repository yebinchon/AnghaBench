
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_dev {int dummy; } ;
struct b53_device {TYPE_1__* ports; int allow_vid_4095; } ;
struct TYPE_2__ {int pvid; } ;


 int EINVAL ;
 scalar_t__ is5325 (struct b53_device*) ;
 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_port_set_pvid(struct switch_dev *dev, int port, int val)
{
 struct b53_device *priv = sw_to_b53(dev);

 if (val > 15 && is5325(priv))
  return -EINVAL;
 if (val == 4095 && !priv->allow_vid_4095)
  return -EINVAL;

 priv->ports[port].pvid = val;

 return 0;
}
