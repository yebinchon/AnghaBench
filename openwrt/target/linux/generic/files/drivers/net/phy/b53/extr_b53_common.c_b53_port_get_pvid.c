
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_dev {int dummy; } ;
struct b53_device {TYPE_1__* ports; } ;
struct TYPE_2__ {int pvid; } ;


 struct b53_device* sw_to_b53 (struct switch_dev*) ;

__attribute__((used)) static int b53_port_get_pvid(struct switch_dev *dev, int port, int *val)
{
 struct b53_device *priv = sw_to_b53(dev);

 *val = priv->ports[port].pvid;

 return 0;
}
